Feature: Smoke Test 

  #Login
  #@LoginDisable @ForgotPwd
  Background: Start the applicaiton
    Given Start the application    
    When Click on Sign In button
    Then Close the hotjar window

  @SmokeTest
  Scenario: Verify buyer login functionality with valid credentials
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Show the title on Dashboard page
    And Logout from the system

  @SmokeTest 
  Scenario: Verify Help link functionality on Login page
    Then Click on Help link on Login page
    Then Switch to new Tab
    Then Show the title on Help page "Support Center"

  @SmokeTest
  Scenario: Verify Terms of Use link functionality on Login page
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Show the title on Terms of Use page "TERMS OF USE"

  @SmokeTest
  Scenario: Verify Privacy Policy link functionality on Login page
    Then Click on Privacy Policy link on Login page
    Then Switch to new Tab
    Then Show the title on Privacy Policy page "Privacy Policy"

  @SmokeTest
  Scenario: Verify Forgot your password link functionality on Login page
    Then Enter data in Email Address field "ab@abc.com"
    Then Click on Continue button on Login page
    Then Click on Forgot your password link on Login page
    Then Show the title on Forgot your password page "Reset your Password"

  @SmokeTest
  Scenario: Verify Back to Sign In button functionality on Reset your Password page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Click on Forgot your password link on Login page
    Then Click on Back to sign in button on Reset your Password page
    Then Show Welcome title "Welcome."

  @SmokeTest
  Scenario: Verify title on Notifications page for Supplier
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 15 seconds
    #When Click on Notifications tab on Dashboard page
    #Then Shows Notifications title on Notifications page
    And Logout from the system

   @SmokeTest
  Scenario: Verify Back to Sign In button functionality on Reset your Password page
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    And Wait for 5 seconds
    Then Click on Back to sign in button on Reset your Password page
    Then Wait for 5 seconds
    And Show Welcome title "Welcome."

  @SmokeTest
  Scenario: Verify title on My Buyers page for Supplier
    When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on My Buyers Nav link
    Then Show title "My Buyers" on My Buyer page
    And Logout from the system

  @SmokeTest
  Scenario: Verify title on Profile page for Supplier
    When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on Basic Information on Dashboard page "true"
    Then Show title on Profile page "Basic Information"
    And Logout from the system

  @SmokeTest
  Scenario: Verify title on Questionnaires page for Supplier
    When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Questionnaires Nav link
    Then Click on Questionnaires on Dashboard page "true"
    Then Show title on Questionnaires page "Assigned Questionnaires"
    And Logout from the system

    @SmokeTest
  Scenario: Verify title on Bank Account page for Supplier
    When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Bank Account Nav link
    Then Click on Bank Account on Dashboard page "true"
    Then Show title on Bank Account page "Bank Account Information"
    And Logout from the system

   @SmokeTest
  Scenario: Verify title on Help page for Supplier
    When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Help Nav link
    Then Show title on Help page "Support Center"
    And Logout from the system

  @SmokeTest
  Scenario: Verify title on My Supplier page for Buyer
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    And Logout from the system

#Need to Start
  @SmokeTest
  Scenario: Verify Add All product codes status in Add UNSPSC Code modal
     When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Show the title on Dashboard page
    Then Click "Suppliers" tab
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab
    Then Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Search by code field visibility in Add product codes modal "true"
    Then Search by code field clickable in Add product codes modal "true"
    Then Enter product code "10101501" in search by code field
    Then Click on Add All option    
    Then Click on Cancel button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify added product codes status in Basic Information
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Show the title on Dashboard page
    Then Click "Suppliers" tab
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab
    Then Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter product code "10101501" in search by code field
    Then Click on Add All option
    Then Click on Confirm button
    Then View added product codes in basic information page "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Add Company Account with valid data for Country "Germany"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "Germany"
    Then Enter value for Bank Account Label "Germany BOA"
    Then Enter value for Account Holder Name "Germany TYS"
    Then Enter value for Bank Name "Germany Bank of America"
    Then Enter value for Bank Branch Name "Germany Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Enter value for Postal code "27560"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "43634763473"
    Then Enter value for Bank Key "54543643"
    Then Enter value for IBAN "FF46363537458658383737"
    Then Enter value for Bank Swift Code "FDGFDHDFHDR"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Select option for Evidence Type "Bank statement"
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "Germany TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add Company Account with valid data for Country "Canada"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "Canada"
    Then Enter value for Bank Account Label "Canada BOA"
    Then Enter value for Account Holder Name "Canada TYS"
    Then Enter value for Bank Name "Canada Bank of America"
    Then Enter value for Bank Branch Name "Canada Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Select option for Province "Newfoundland and Labrador"
    Then Enter value for Postal code "M1R 0E9"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "4564574376577"
    Then Enter value for Bank Key "464576585"
    Then Enter value for Bank Swift Code "DVSDSVK5435"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button    
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    # Then Show created Germany Bank account on Account list "Account Holder Name: Germany TYS"
    # Then Click on Germany "Account Holder Name: Germany TYS" Bank Account Holder name
    Then Show Company Account card with "Canada TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add Company Account with valid data for Country "France"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "France"
    Then Enter value for Bank Account Label "France BOA"
    Then Enter value for Account Holder Name "France TYS"
    Then Enter value for Bank Name "France Bank of America"
    Then Enter value for Bank Branch Name "France Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Enter value for Postal code "27560"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "43543643743"
    Then Enter value for Bank Key "4643643745"
    Then Enter value for Bank Control Key "35"
    Then Enter value for IBAN "FD5346363476347347374722687"
    Then Enter value for Bank Swift Code "DVSDFGSDT4T"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button    
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "France TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Delete the created Bank account of Country Germany from the list
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "Germany"
    Then Enter value for Bank Account Label "Germany BOA"
    Then Enter value for Account Holder Name "Germany TYS"
    Then Enter value for Bank Name "Germany Bank of America"
    Then Enter value for Bank Branch Name "Germany Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Enter value for Postal code "27560"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "43634763473"
    Then Enter value for Bank Key "54543643"
    Then Enter value for IBAN "FF46363537458658383737"
    Then Enter value for Bank Swift Code "FDGFDHDFHDR"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Select option for Evidence Type "Bank statement"
     Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button    
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "Germany TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Delete the created Bank account of Country Canada from the list
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "Canada"
    Then Enter value for Bank Account Label "Canada BOA"
    Then Enter value for Account Holder Name "Canada TYS"
    Then Enter value for Bank Name "Canada Bank of America"
    Then Enter value for Bank Branch Name "Canada Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Select option for Province "Newfoundland and Labrador"
    Then Enter value for Postal code "M1R 0E9"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "4564574376577"
    Then Enter value for Bank Key "464576585"
    Then Enter value for Bank Swift Code "FDGFDHDFHDR"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Select option for Evidence Type "Bank statement"
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "Canada TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system  

  @SmokeTest
  Scenario: Add Company Account with valid data for Country "Brazil"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "Brazil"
    Then Enter value for Bank Account Label "Brazil BOA"
    Then Enter value for Account Holder Name "Brazil TYS"
    Then Enter value for Bank Name "Brazil Bank of America"
    Then Enter value for Bank Branch Name "Brazil Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Enter value for Postal code "27560-432"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number "43543643743"
    Then Enter value for Bank Key "4643643745"
    Then Enter value for IBAN "FD5346363476347347374722687F6"
    Then Enter value for Bank Swift Code "DVSDFGSDT4T"
    Then Select option for Evidence Type "Bank statement"
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Select option for Evidence Type "Bank statement"
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "Brazil TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system   

  @SmokeTest
  Scenario: Add Company Account with valid data for Country "India"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on the Add a company account button
    Then Select Country as "India"
    Then Enter value for Bank Account Label "India BOA"
    Then Enter value for Account Holder Name "India TYS"
    Then Enter value for Bank Name "India Bank of America"
    Then Enter value for Bank Branch Name "India Durham"
    Then Enter value for Address "1 COPLEY PKWY"
    Then Enter value for City " MORRISVILLE"
    Then Select option for State "Andhra Pradesh"
    Then Enter value for Postal code "275602"
    Then Enter value for Bank Contact Name "Sai"
    Then Enter value for Bank Contact Number "+1 (645) 745-8786"
    Then Enter value for Bank Account Number India "43543643743"
    Then Enter value for Bank Key "46436437457"
    Then Enter value for Bank Swift Code "DVSDFGSDT4T"
    Then Enter value for Bank Control Key "35"
    Then Select option for Evidence Type "Bank statement"
    Then Select "Australian Dollar" in "Currency" css dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Save button on Add Company Account Modal
    Then Switch to the active window
    Then Click ok button on Successfully Germany bank account Modal
    Then Switch to the parent window
    Then Show Company Account card with "India TYS"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Logout from the system 

  @SmokeTest
  Scenario: Verify sending invitation to a company to add to Corporate Hierarchy
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
    Then Show toast message displayed
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify "Add to Corporate Hierarchy" functionality with only required fields
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "Canada" from Tax Country drop down
    Then Click Save button
    Then Verify Company Name added to Corporate Hierarchy
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete company from Corporate Hierarchy
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Click on Elipsis on the company name
    Then Select "Remove from Corporate Hierarchy"
    Then Click Delete button
    Then Verify Company name is removed from Corporate Hierarchy
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Edit Corporate Hierarchy functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
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

  @SmokeTest
  Scenario: Verify Corporate Hierarchy status when Invitation is sent
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
    Then Verify Corporate Hierarchy Status "Invited"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Corporate Hierarchy status when Invitation is not sent
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Incomplete"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Corporate Hierarchy status when Invitation is accepted
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
    Then Click on Join Now Link in the "DM" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter Legal Business Name
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "Farmer 1" in Address field
    Then Enter City "Geneva" in City field
    Then Select State in State drop down
    Then Enter "123456789" in Postal Code field
    Then Enter "9876543210" in Phone Number field
    Then Click "Trust Your Supplier" Terms & Conditions checkbox
    Then Click "Continue" button
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email
    Then Switch to "new TYS" tab
    Then Enter code in verification code field
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click on Corporate Hierarchy on Profile page
    Then Click on the Elipsis
    Then Select "Accept Relationship"
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Verify Corporate Hierarchy Status "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify NAICS filter functionality in discover page
    When Enter Nokia Email address in Email Address field "nokiaautobuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "3221"
    Then Click Apply button
    Then Verify "IBMDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify IBM supplier search in discover page using Nokia Buyer
    When Enter Nokia Email address in Email Address field "nokiaautobuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "IBMDiscoverSupplier"
    Then Verify "IBMDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify IBM supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "IBMDiscoverSupplier"
    Then Verify "IBMDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Documents uploaded in the basic information page and financialtab, labels and update/replace the documents
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "DM" Supplier Company name on Invite Supplier window
    Then Enter "DM" Supplier Contact email address on Invite Supplier modal
    Then Enter "DM" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "DM" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "DM" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "sample"
    Then Click "Confirm" button
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Documents Button
    Then Verify Document label is "sample"
    Then Select "taxprofile" filter
    Then Verify Source is "TaxProfile"
    Then clear all the filters
    Then Select "financial" filter
    Then Verify Source is "Financial"
    Then clear all the filters
    Then Select update or replace Document for "sample"
    Then Click "Upload" button
    Then Upload "PDF" under "Replace Document"
    Then add label as "newSample"
    Then Click "Confirm" button
    Then Click "Save and Continue" button 1
    Then Click on Review and publish nav link
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Switch to the parent window
    Then Click on Documents Button
    Then Verify Document label is "newSample"
    Then Logout from the system

  @SmokeTest
  Scenario: Upload and Verify Documents uploaded in the Questionnaries
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "DM" Supplier Company name on Invite Supplier window
    Then Enter "DM" Supplier Contact email address on Invite Supplier modal
    Then Enter "DM" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "DocumentManagerAutomation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "DM" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "DM" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Click on Questionnaires Nav link
    #Upload Documents For Conflict Minerals
    Then Click on Begin Questionnaire button for "Conflict Minerals"
    #answering questionnaires-Conflict Minerals
    Then click on radio button for question "Will your Company provide hardware materials, hardware parts, or hardware products?" is "YES"
    Then click on radio button for question "Does your company provide materials that contain tin, tantalum, tungsten or gold (3TG)?" is "YES"
    Then click on radio button for question "Do you have a CMRT report or scorecard?" is "YES"
    Then Enter Date of Expiration for question "Do you have a CMRT report or scorecard?"
    Then Click "Attach Document" button for "Do you have a CMRT report"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Conflict Minerals Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Does your company provide materials that contain Cobalt?" is "NO"
    Then click on radio button for question "Do you have a CRT report or scorecard. " is "YES"
    Then Enter Date of Expiration for question "Do you have a CRT report or scorecard. "
    Then Click "Attach Document" button for "Do you have a CRT report or scorecard. "
    Then Upload "PDF" under "Upload Document"
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
    Then click on radio button for question "Does your company have a conflict minerals contact?" is "NO"
    Then click on radio button for question "Are there any issues or concerns that your company may have regarding compliance to IBM Conflict Minerals" is "NO"
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Liability Insurance
    Then Click on Begin Questionnaire button for "Liability Insurance"
    Then click on radio button for question "Do you carry liability insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "NO"
    Then click on radio button for question "Do you have an insurance liability or workers compensation" is "YES"
    Then Enter Date of Expiration for question "Do you have an insurance liability or workers compensation"
    Then Click "Attach Document" button for "Do you have an insurance liability or workers compensation"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Liability Insurance"
    Then Click "Confirm" button
    Then click on radio button for question "Do you carry a Cyber Security Insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "NO"
    Then click on radio button for question "Do you carry a Employee Liability Insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "NO"
    #publish-Liability Insurance
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Ethics and Compliance
    Then Click on Begin Questionnaire button for "Ethics and Compliance"
    Then click on radio button for question "Within the past five (5) years:  Has your company or any related entity" is "YES"
    Then Enter answer for question 1 as "answer"
    Then click on radio button for question "Have your company or any employee of your company, any related entities" is "YES"
    Then Enter answer for question 2 as "answer"
    Then click on radio button for question "Does your company have a written code of conduct" is "NO"    
    Then Enter answer for question 3 as "answer"
    #Then Click "Attach Document" button for "Please provide any documents or links to access code of conduct practices for your employees"
    #Then Upload "PDF" under "Upload Document"
    #Then add label as "Ethics and Compliance"
    #Then Click "Confirm" button
    Then click on radio button for question "Does your company conduct ethics training of employees and representatives of your company" is "YES"
    #Then click on radio button for question "Are there measures in your company that encourage employees to comply with applicable laws and internal guidelines?" is "YES"
    #publish-Ethics and Compliance
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    # #  #Sustainability (Social, Environmental, Health & Safety)
    Then Click on Begin Questionnaire button for "Sustainability (Social, Environmental, Health & Safety)"
    Then click on radio button for question "Is your company a member of the Responsible Business Alliance?" is "YES"
    Then click on radio button for question "Does your company participate in the United Nations Global Compact?" is "NO"
    Then click on radio button for question "Is your company B Corp certified?" is "NO"
    Then click on radio button for question "Has your company been assessed by EcoVadis?" is "NO"
    Then click on radio button for question "Do you have another rating of certification related to Sustainability?" is "NO"
    Then click on radio button for question "Does your organization operate a labor Management System that is certified against SA 8000?" is "YES"
    Then Enter Date of Expiration for question "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then Click "Attach Document" button for "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Sustainability Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Do you have an alternate certification other than SA 8000?" is "NO"
    Then Enter answer for question 8 as "Answer"
    Then click on radio button for question "Does your organization operate a social responsibility system that is certified against ISO 26001?" is "YES"
    Then Enter Date of Expiration for question "Does your organization operate a social responsibility system that is certified against ISO 26001?"
    Then Click "Attach Document" button for "Does your organization operate a social responsibility system that is certified against ISO 26001?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Sustainability Doc2"
    Then Click "Confirm" button
    Then click on radio button for question "Do you have an alternate certification other than ISO 26001?" is "NO"
    Then Enter answer for question 11 as "Answer"
    Then click on radio button for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?" is "YES"
    Then Enter Date of Expiration for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?"
    Then Click "Attach Document" button for "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Sustainability Doc3"
    Then Click "Confirm" button
    Then click on radio button for question "Is there a function / appointed person responsible for Health & Safety Management Issues?" is "NO"
    Then click on radio button for question "Provide details of H&S performance against the following performance indicators" is "QUESTION_SUSTAINABILITY_HEALTH_AND_SAFETY_PERFORMANCE_OPTION_NA"
    Then click on radio button for question "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?" is "YES"
    Then Enter Date of Expiration for question "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?"
    Then Click "Attach Document" button for "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Sustainability Doc4"
    Then Click "Confirm" button
    Then click on radio button for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?" is "YES"
    Then Enter Date of Expiration for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then Click "Attach Document" button for "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Sustainability Doc5"
    Then Click "Confirm" button
    Then click on radio button for question "Did your company report on the CDP carbon and / or water initiative last year?" is "NO"
    #publish-Sustainability (Social, Environmental, Health & Safety)
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    # # GDPR - General Data Protection Regulation
    Then Click on Begin Questionnaire button for "GDPR - General Data Protection Regulation"
    Then click on radio button for question "Is your organisation compliant with all legal obligations stemming from the General Data Protection Regulation (GDPR)?" is "YES"
    Then Enter answer for question 2 as "answer"
    Then Enter answer for question 3 as "answer"
    Then click on radio button for question "Please confirm whether you maintain any IT security standards certifications (e.g. ISO 27001 or Cyber Essentials)?" is "NO"
    Then Enter answer for question 5 as "answer"
    Then Select "Confidential" from drop down
    Then click on radio button for question "Has a Data Protection Impact Assessment" is "YES"
    Then click on radio button for question "Have you reviewed your usage and contracts" is "YES"
    Then click on radio button for question "Are you aware of all your obligations under GDPR?" is "YES"
    Then click on radio button for question "Have you a mechanism in place" is "YES"
    Then click on radio button for question "Is the collection of your customer’s personal data" is "YES"
    Then click on radio button for question "Does your team have systems, procedures and training to comply with individuals Right to Erasure?" is "YES"
    Then click on radio button for question "Are your systems able to completely erase customer data?" is "YES"
    Then click on radio button for question "Does your team have systems, procedures and training to comply with individuals Right to Rectification?" is "YES"
    Then click on radio button for question "Are your staff trained to identify" is "YES"
    Then click on radio button for question "Do your systems allow for one customer’s data" is "YES"
    Then click on radio button for question "Does your company use any contractors or vendor suppliers?" is "YES"
    Then click on radio button for question "Is any customer data transferred to" is "YES"
    Then click on radio button for question "As part of your procurement process" is "YES"
    Then click on radio button for question "Do you want to attach any available document on your GDPR policy?" is "YES"
    Then Click "Attach Document" button for "Do you want to attach any available document on your GDPR policy?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "GDPR Doc"
    Then Click "Confirm" button
    #publish-GDPR - General Data Protection Regulation
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"    
    # #Germany Tax Registration
    Then Click on Begin Questionnaire button for "Germany Tax Registration"
    Then click on checkbox for question "What are the taxes you are subjected to?" is "2"
    Then click on radio button for question "Do you have a VAT Number (UST-ID NR or Umsatzsteuer-Identifikationsnummer)?" is "YES"
    Then Enter answer for question 3 as "12345689101"
    Then Click "Attach Document" button for "Please provide your VAT Number (UST-ID NR or Umsatzsteuer Identifikationsnummer)"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Germany Tax Registration Doc"
    Then Click "Confirm" button
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    # # MSME Certification (India)
    Then Click on Begin Questionnaire button for "MSME Certification (India)"
    Then click on radio button for question "Is your business a Micro, Small and Medium Enterprise (MSME)?" is "YES"
    Then click on radio button for question "Do you have a Micro, Small and Medium Enterprise (MSME) Certificate available?" is "YES"
    Then Enter unique twelve digit number "123456789012"
    Then Click "Attach Document" button for "Please provide your twelve digit Unique Identification Number provided by the Ministry of Micro, Small and Medium Enterprises, Government of India"
    Then Upload "PDF" under "Upload Document"
    Then add label as "MSME Certification (India)Doc"
    Then Click "Confirm" button
    Then Scroll Down the page
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"    
    ## Quality Management
    Then Click on Begin Questionnaire button for "Quality Management"
    Then click on radio button for question "Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?" is "YES"
    Then click on radio button for question "Do you maintain ISO 9000 certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain ISO 9000 certification?"
    Then Click "Attach Document" button for "Do you maintain ISO 9000 certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain ISO 9001 certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain ISO 9001 certification?"
    Then Click "Attach Document" button for "Do you maintain ISO 9001 certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc2"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain IATF 16949 certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain IATF 16949 certification?"
    Then Click "Attach Document" button for "Do you maintain IATF 16949 certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc3"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain GMP certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain GMP certification?"
    Then Click "Attach Document" button for "Do you maintain GMP certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc4"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain HAACP certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain HAACP certification?"
    Then Click "Attach Document" button for "Do you maintain HAACP certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc5"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain CMMI certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain CMMI certification?"
    Then Click "Attach Document" button for "Do you maintain CMMI certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc6"
    Then Click "Confirm" button
    Then click on radio button for question "Do you maintain SPICE certification?" is "YES"
    Then Enter Date of Expiration for question "Do you maintain SPICE certification?"
    Then Click "Attach Document" button for "Do you maintain SPICE certification?"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc7"
    Then Click "Confirm" button
    Then click on radio button for question "If you have selected Other, please state the certification in the comment section" is "YES"
    Then Enter Date of Expiration for question "If you have selected Other, please state the certification in the comment section"
    Then Click "Attach Document" button for "If you have selected Other, please state the certification in the comment section"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Quality Management Doc8"
    Then Click "Confirm" button
    Then click on radio button for question "Does the Return Material Authorization (RMA) rate, or field failure, or customer return rate meet your internal targets for each of the past 3 years?" is "YES"
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Switch to the parent window
    Then Click on Documents Button
    Then Select "questionnaire" filter
    Then Change row per page to fifty
    Then Verify Document label is "Conflict Minerals Doc1"
    Then Verify Document label is "Conflict Minerals Doc2"
    Then Verify Document label is "Conflict Minerals IBM Doc1"
    Then Verify Document label is "Liability Insurance"    
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Download All button funclitionality in Buyer account
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automationsupplier1602830399432"
    Then Click on Enter Key
    Then Click on the Supplier record in the supplier page
    Then Verify visiblity of Download All button in supplier reading pane
    Then Verify status of Download All button in supplier reading pane
    Then Click on Download All button in Questionnaires section
    Then Select "Questionnaires" from Download All in Questionnaires section
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    #Then Close toast message
    Then Verify downloaded file "Automationsupplier1602830399432-Questionnaires.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in buyer account
    Then Delete the downloaded file
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Download All button funclitionality in Supplier account
    Then Enter data in Email Address field "Automationsupplier1602830399432@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Questionnaires Nav link
    ###Pending - Verify Generic Questionnairs in downloaded file
    Then Click "Download All" button
    Then Click "Questionnaires" button
    Then Click "Generic Questionnaires" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "Generic-Questionnaires.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "Generic-Questionnaires"
    Then Delete the downloaded file
    ###Pending - Verify IBM specific questionnairs
    Then Click "International Business Machines Corporation" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "International Business Machines Corporation-Questionnaires.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "International Business Machines Corporation-Questionnaires"
    Then Delete the downloaded file
    ###Pending -  Verify Generic Questionnairs with responses in downloaded file
    Then Click "Questionnaires" button
    Then Click "Download All" button
    Then Click "Questionnaires with responses" button
    Then Click "Generic Questionnaires" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "Generic-Questionnaires With Responses.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "Generic-Questionnaires"
    Then Delete the downloaded file
    ###Pending - Verify IBM specific questionnairs with responses
    Then Click "International Business Machines Corporation" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "International Business Machines Corporation-Questionnaires With Responses.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "International Business Machines Corporation-Questionnaires"
    Then Delete the downloaded file
    ###Published - Verify Generic Questionnairs in downloaded file
    Then Click on published tab at Assigned questionaire
    Then Click "Download All" button
    Then Click "Questionnaires" button
    Then Click "Generic Questionnaires" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "Generic-Questionnaires.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "Generic-Questionnaires"
    Then Delete the downloaded file
    ###Published - Verify IBM specific questionnairs
    Then Click "International Business Machines Corporation" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "International Business Machines Corporation-Questionnaires.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "International Business Machines Corporation-Questionnaires"
    Then Delete the downloaded file
    ###Published -  Verify Generic Questionnairs with responses in downloaded file
    Then Click "Questionnaires" button
    Then Click "Download All" button
    Then Click "Questionnaires with responses" button
    Then Click "Generic Questionnaires" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "Generic-Questionnaires With Responses.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "Generic-Questionnaires"
    Then Delete the downloaded file
    ###Published - Verify IBM specific questionnairs with responses
    Then Click "International Business Machines Corporation" button
    Then Show Toast message "Downloading..."
    Then Wait for 10 seconds
    Then Verify downloaded file "International Business Machines Corporation-Questionnaires With Responses.xlsx"
    Then Verify Quesionnairs in the downloaded sheet in supplier view "International Business Machines Corporation-Questionnaires"
    Then Delete the downloaded file
    Then Logout from the system

  @SmokeTest
  Scenario: Verify FAQ Section on Help page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Tab
    Then Check the visibility of FAQ Title on Help Page "Frequently Asked Questions"
    Then Check the visibility of Seach FAQ text Box
    Then Check the visibility of Sub Section Blockchain in FAQ section "Blockchain"
    Then Check the visibility of Sub Section General in FAQ section "General"
    Then Check the visibility of Sub Section Languages in FAQ section "Languages"
    Then Check the visibility of Sub Section Questionnaires in FAQ section "Questionnaires"
    Then Check the visibility of Sub Section Support in FAQ section "Support"
    Then Check the visibility of Sub Section User Guides in FAQ section "User Guides"
    Then Check the visibility of Sub Section Userid and Passwords in FAQ section "Userid and Passwords"
    Then Check the visibility of Sub Section Discover Suppliers in FAQ section "Discover Suppliers"
    Then Check the visibility of Sub Section Notifications in FAQ section "Notifications"
    Then Check the visibility of Sub Section Supplier Invitation in FAQ section "Supplier Invitation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify FAQ Section on Help page
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check the visibility of FAQ Title on Help Page "Frequently Asked Questions"
    Then Check the visibility of Seach FAQ text Box
    Then Check the visibility of Sub Section Blockchain in FAQ section "Blockchain"
    Then Check the visibility of Sub Section General in FAQ section "General"
    Then Check the visibility of Sub Section Languages in FAQ section "Languages"
    Then Check the visibility of Sub Section Questionnaires in FAQ section "Questionnaires"
    Then Check the visibility of Sub Section Support in FAQ section "Support"
    Then Check the visibility of Sub Section User Guides in FAQ section "User Guides"
    Then Check the visibility of Sub Section Userid and Passwords in FAQ section "Userid and Passwords"
    Then Check the visibility of Sub Section Documents in FAQ section "Documents"
    Then Check the visibility of Sub Section Pricing in FAQ section "Pricing"
    Then Check the visibility of Sub Section Supplier Invitation in FAQ section "Supplier Invitation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Buyers Drop-down Options available in Buyer T&C Lookup Pop-up on Help page for Supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check if Buyer T and C Lookup button is clickable
    ##Then Switch to the active window
    Then Check Select Buyers Dropdown Title Buyers TandC Popup "Please select from your list of Buyers to view the Terms of Use"
    Then Check Available Buyers in the popup and print the List of Buyers
    Then Click on Cancel button on Buyer TandC lookup popup
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Active Users tab onClick and  Active Users tab Last logged message on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Active Users tab on Manage Users page
    Then Showing Active Users with status "Last Logged In"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Pending Users tab onClick on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Pending Users tab on Manage Users page
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Deleted Users tab onClick on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Deleted Users tab on Manage Users page
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if Buyer role Procurement manager is able to search Supplier with Company name on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "My Suppliers"
    Then Enter Supplier name in Search field "Marcus France final QA"
    Then Click on Enter Key
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if Buyer role Procurement manager is able to search supplier with Email Address on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "marcusfrancefinalqa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "My Suppliers"
    Then Show Prev button on My Suppliers page "true"
    Then Prev button disabled on My Suppliers page "false"
    Then Show Next button on My Suppliers page "true"
    Then Next button enabled on My Suppliers page "true"
    Then Click on Next button on My Suppliers page
    Then Prev button enabled on My Suppliers page "true"
    Then Click on Prev button on My Suppliers page
    Then Prev button disabled on My Suppliers page "false"
    Then Change row per page to two hundred
    Then Click on Next button on My Suppliers page
    Then Click on Prev button on My Suppliers page
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "My Suppliers"
    Then Next button enabled on My Suppliers page "true"
    Then Change row per page to fivehundred
    #Then Next button enabled on My Suppliers page "true"     (future use)
    #Then Click on Next button on My Suppliers page           (future use)
    #Then Click on Prev button on My Suppliers page           (future use)
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the High risk option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Enter Supplier name in Search field "Marcus France final QA"
    Then Click on Enter Key
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Export Reg"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  # email address search
  @SmokeTest
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "exportreg@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Export"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Reg"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Export"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Reg"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "exportreg@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Export"
    Then Enter Invitee Last Name "Reg"
    Then Enter Invitee Email "exportreg@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "AutomationEDI"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  #email  adress search
  @SmokeTest
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "edia@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "EDI"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "EDI"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "edia@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Automation"
    Then Enter Invitee Last Name "EDI"
    Then Enter Invitee Email "edia@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "TrustComplianceAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  # Email address search
  #@SmokeTest
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "trusta@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Trust"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  # Last name search
  #@SmokeTest
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "trusta@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Enter Invitee Last Name "Automation"
    Then Enter Invitee Email "trusta@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "InternalBuyerAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  # Email address search
  #@SmokeTest
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "iba@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Internal"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  # Last name search
  #@SmokeTest
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Buyer"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Internal"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Buyer"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "iba@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  # Email search
  #@SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Enter Invitee Last Name "Buyer"
    Then Enter Invitee Email "iba@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Invited"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Declined"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "ROAAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  # email address search
  #@SmokeTest
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "roa@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "ROA"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  # Last Name search
  # @SmokeTest
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "ROA"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "roa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "ROA"
    Then Enter Invitee Last Name "Automation"
    Then Enter Invitee Email "roa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Invited"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Declined"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by First Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Last Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Email Address using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "chadalavada"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by User Role using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Kiran Chadalavada in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show Read Only Admin role in Search results "Role: Read Only Admin"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Deleted Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Deleted Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Deleted Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage All Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage All Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage All Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Accepted Invites on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Onboarded on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button enabled "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Mark as Read on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Read option
    Then Click on unread notifications
    #Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Mark as  Unread on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Unread option
    Then Click on read notifications
    Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify unread notifications default checkbox on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button enabled "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Mark as Read on unread Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Read option
    Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify read notifications default checkbox on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Mark as  Unread on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Unread option
    Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify settings label on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on settings on Notifications
    Then verify settings tab label on Notifications page "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify default checkbox Unchecked on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on settings on Notifications
    Then Verify default checkbox Unchecked "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Country filter functionality in discover page
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button
    Then Search IBM supplier in search field "272020test19"
    Then Verify "272020test19" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify NAICS filter functionality in discover page
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "3221"
    Then Click Apply button
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify IBM supplier search in discover page using Nokia Buyer
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "272020test19"
    Then Verify "272020test19" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Accepted Invites on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Onboarded on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Accepted Invites on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Returned to Supplier on Dashboard page "true"
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Onboarded on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Country filter functionality in discover page
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button
    Then Search IBM supplier in search field "010420test2"
    Then Verify "010420test2" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify NAICS filter functionality in discover page
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "3221"
    Then Click Apply button
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify IBM supplier search in discover page using Nokia Buyer
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "292020test2"
    Then Verify "292020test2" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Nokia supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Buyer invite a supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Enter Contact Email Address on Invite Supplier modal
    Then Enter Confirm Contact Email Address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window "Test"
    Then Enter Contact Last Name on Invite Supplier window "Last"
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify email received in supplier inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    
   @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to NewUser"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "EDIManager"
    Then Enter Confirmation Email on Invite a New User modal "EDIManager"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to EDIManager"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ExportRegulations"
    Then Enter Confirmation Email on Invite a New User modal "ExportRegulations"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ExportRegulations"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Internal Buyer role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Internal Buyer"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User Modal
    Then Enter Email on Invite a New User modal "InternalBuyer"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to InternalBuyer"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Ombudsman role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Ombudsman"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "Ombudsman"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to Ombudsman"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Procurement Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Procurement Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ProcurementManager"
    Then Enter Confirmation Email on Invite a New User modal "ProcurementManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ProcurementManager"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ROA"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Trust and Compliance role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Trust & Compliance"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "TrustCompliance"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to TrustCompliance"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ROAFirst"
    Then Enter Last Name on Invite a New User Modal "ROALast"
    Then Enter Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ROA"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ROAFirst"
    Then Enter Last Name on Invite a New User Modal "ROALast"
    Then Enter the same Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

 @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with admin role using mailinator
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "EDI"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "EDI"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to EDI"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "EDI"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ExportReg"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ExportReg"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ExportReg"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ExportReg"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Internal Buyer role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Internal Buyer"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "InternalBuyer"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to InternalBuyer"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "InternalBuyer"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Ombudsman role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Ombudsman"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "Ombudsman"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to Ombudsman"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "Ombudsman"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Procurement Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Procurement Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ProcManager"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ProcManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ProcManager"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ProcManager"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ROA"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ROA"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ROA"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Trust & Compliance role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Trust & Compliance"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "TrustCompliance"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to TrustCompliance"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "TrustCompliance"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

 @SmokeTest
  Scenario: Verify invitation accepted by new user with admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify email received in new admin user inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    #Then Click on Got It button
    Then Click on Register Now Link
    Then Switch to "new TYS" tab
    Then Click on check box "I acknowledge that I have read, and do hereby accept the Trust Your Supplier terms of use"
    Then Click "I Accept" button
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the Email
    Then Switch to "new TYS" tab
    Then Enter Code in verification code field
    Then Click "Sign Up" button
    Then Logout from the system
    Then Close current tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Active Users button
    Then Search for the new user using email address
    Then Verify new user added under Active Users
    Then Logout from the system

 @SmokeTest
  Scenario: Verify invitation accepted by new user with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "EDI"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "EDI"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to EDI"
    Then Logout from the system
    Then Verify email received in new "EDI" user inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link
    Then Switch to "new TYS" tab
    Then Click on check box "I acknowledge that I have read, and do hereby accept the Trust Your Supplier terms of use"
    Then Click "I Accept" button
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the Email
    Then Switch to "new TYS" tab
    Then Enter Code in verification code field
    Then Click "Sign Up" button
    Then Logout from the system
    Then Close current tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Active Users button
    Then Search for the new user using email address "edi"
    Then Verify new user added under Active Users "edi"
    Then Logout from the system

 @SmokeTest
  Scenario: Verify invitation accepted by new user with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ExportRegulations"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ExportRegulations"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ExportRegulations"
    Then Logout from the system
    Then Verify email received in new "ExportRegulations" user inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link
    Then Switch to "new TYS" tab
    Then Click on check box "I acknowledge that I have read, and do hereby accept the Trust Your Supplier terms of use"
    Then Click "I Accept" button
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the Email
    Then Switch to "new TYS" tab
    Then Enter Code in verification code field
    Then Click "Sign Up" button
    Then Logout from the system
    Then Close current tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Active Users button
    Then Search for the new user using email address "exportregulations"
    Then Verify new user added under Active Users "exportregulations"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search using admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by First Name using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by Last Name using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by Last Name using Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Administrator as last name in Search results "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by Email Address using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by Email Address using Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Trust & Compliance"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by User Role using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Users search by User Role using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by First Name using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Last Name using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by Email Address using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by User Role using Email Address
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Active Users search by User Role using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Kiran Chadalavada in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show Read Only Admin role in Search results "Role: Read Only Admin"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by First Name using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by Last Name using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by Email Address using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Pending Users search by User Role using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Deleted Users search by User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Manage Deleted Users search by User Role using User Role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to NewUser"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Trust and Compliance role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Trust & Compliance"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "TrustCompliance"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to TrustCompliance"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ROA"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Procurement Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Procurement Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ProcurementManager"
    Then Enter Confirmation Email on Invite a New User modal "ProcurementManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ProcurementManager"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Ombudsman role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Ombudsman"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "Ombudsman"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to Ombudsman"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Internal Buyer role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Internal Buyer"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User Modal
    Then Enter Email on Invite a New User modal "InternalBuyer"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to InternalBuyer"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ExportRegulations"
    Then Enter Confirmation Email on Invite a New User modal "ExportRegulations"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ExportRegulations"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "EDIManager"
    Then Enter Confirmation Email on Invite a New User modal "EDIManager"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to EDIManager"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with admin role using mailinator
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    Then Enter Last Name on Invite a New User Modal "Last"
    Then Enter Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to NewUser"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    Then Enter Last Name on Invite a New User Modal "Last"
    Then Enter the same Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "EDIFirst"
    Then Enter Last Name on Invite a New User Modal "EDILast"
    Then Enter Email on Invite a New User modal "EDIManager"
    Then Enter Confirmation Email on Invite a New User modal "EDIManager"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to EDIManager"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "EDIFirst"
    Then Enter Last Name on Invite a New User Modal "EDILast"
    Then Enter the same Email on Invite a New User modal "EDIManager"
    Then Enter Confirmation Email on Invite a New User modal "EDIManager"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ExportRegFirst"
    Then Enter Last Name on Invite a New User Modal "ExportRegLast"
    Then Enter Email on Invite a New User modal "ExportRegulations"
    Then Enter Confirmation Email on Invite a New User modal "ExportRegulations"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ExportRegulations"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ExportRegFirst"
    Then Enter Last Name on Invite a New User Modal "ExportRegLast"
    Then Enter the same Email on Invite a New User modal "ExportRegulations"
    Then Enter Confirmation Email on Invite a New User modal "ExportRegulations"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Internal Buyer role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Internal Buyer"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "IntBuyerFirst"
    Then Enter Last Name on Invite a New User Modal "IntBuyerLast"
    Then Enter Email on Invite a New User modal "InternalBuyer"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to InternalBuyer"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "IntBuyerFirst"
    Then Enter Last Name on Invite a New User Modal "IntBuyerLast"
    Then Enter the same Email on Invite a New User modal "InternalBuyer"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Ombudsman role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Ombudsman"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "OmbudsmanFirst"
    Then Enter Last Name on Invite a New User Modal "OmbudsmanLast"
    Then Enter Email on Invite a New User modal "Ombudsman"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to Ombudsman"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "OmbudsmanFirst"
    Then Enter Last Name on Invite a New User Modal "OmbudsmanLast"
    Then Enter the same Email on Invite a New User modal "Ombudsman"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Procurement Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Procurement Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ProManagerFirst"
    Then Enter Last Name on Invite a New User Modal "ProManagerLast"
    Then Enter Email on Invite a New User modal "ProcurementManager"
    Then Enter Confirmation Email on Invite a New User modal "ProcurementManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ProcurementManager"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ProManagerFirst"
    Then Enter Last Name on Invite a New User Modal "ProManagerLast"
    Then Enter the same Email on Invite a New User modal "ProcurementManager"
    Then Enter Confirmation Email on Invite a New User modal "ProcurementManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ROAFirst"
    Then Enter Last Name on Invite a New User Modal "ROALast"
    Then Enter Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to ROA"
    Then Close toast message
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "ROAFirst"
    Then Enter Last Name on Invite a New User Modal "ROALast"
    Then Enter the same Email on Invite a New User modal "ROA"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with Trust & Compliance role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Trust & Compliance"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "TrustFirst"
    Then Enter Last Name on Invite a New User Modal "ComplianceLast"
    Then Enter Email on Invite a New User modal "TrustCompliance"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on Manage Users Page "Invite sent to TrustCompliance"
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "TrustFirst"
    Then Enter Last Name on Invite a New User Modal "ComplianceLast"
    Then Enter the same Email on Invite a New User modal "TrustCompliance"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  @SmokeTest
  Scenario: Verify invitation in mailinator inbox with admin
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with EDI Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "EDI Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "EDI"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "EDI"
    Then Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to EDI"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "EDI"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Export Regulations role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Export Regulations"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ExportReg"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ExportReg"
    Then Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ExportReg"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ExportReg"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Internal Buyer role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Internal Buyer"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "InternalBuyer"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "InternalBuyer"
    Then Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to InternalBuyer"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "InternalBuyer"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Ombudsman role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Ombudsman"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "Ombudsman"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "Ombudsman"
    Then Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to Ombudsman"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "Ombudsman"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Procurement Manager role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Procurement Manager"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ProcManager"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ProcManager"
    Then Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ProcManager"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ProcManager"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Read Only Admin role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Read Only Admin"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "ROA"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "ROA"
    Then Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to ROA"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "ROA"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify invitation received in mailinator inbox with Trust & Compliance role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Edit Permissions tab
    Then Verify the required roles is added in Edit Permissions tab "Trust & Compliance"
    Then Click on Users tab in Manage users page
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "TrustCompliance"
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal "TrustCompliance"
    Then Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to TrustCompliance"
    Then Logout from the system
    Then Open email service provider app
    And Enter Email address in Input field "TrustCompliance"
    Then Verify the Email Subject in Email Inbox "Invitation from Trust Your Supplier"

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with admin role of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to NewUser"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Editor role of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "NewEditor"
    Then Enter Confirmation Email on Invite a New User modal "NewEditor"
    Then Select a Role from the dropdown on Invite a New User Modal "Editor"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to NewEditor"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite a New User with Publisher role of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal "NewPublisher"
    Then Enter Confirmation Email on Invite a New User modal "NewPublisher"
    Then Select a Role from the dropdown on Invite a New User Modal "Publisher"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to NewPublisher"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Confirmation message while Invite an existing User with admin role of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    Then Enter Last Name on Invite a New User Modal "Last"
    Then Enter Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to NewUser"
    Then Switch to the parent window
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    Then Enter Last Name on Invite a New User Modal "Last"
    Then Enter the same Email on Invite a New User modal "NewUser"
    Then Enter Confirmation Email on Invite a New User modal "NewUser"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Switch to the parent window
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Delete User from Manage Users
    Then Logout from the system

  # 1.pending invite
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    # 5. Able to register with the supplier
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Lithuania" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 6. Verify the buyers in the My Buyer page
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  # 2. Accepted onward
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Accepted onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 5. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Accepted Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 6. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 7. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 8. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Accepted Invite"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  # 3. profile complete= publish with out questionaire (Pending Questionnaires)
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with profile complete onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 6. Login as Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    # 7. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 8. Check the Liason section on reading panel before Connecting
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 9. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Pending Questionnaires"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  #4. ready for review = publish with questionnaire  (Awaiting Review)
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with ready for review onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 7. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Ready For Review"
    Then Logout from the system
    # 8. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 9. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 10. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Returned to supplier onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 7. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Ready For Review"
    # 8. Return the supplier
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Return to Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes on the return to supplier modal
    Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    Then Click on "Confirm Return to Supplier" primary button on the modal
    Then Wait for 3 seconds
    Then Switch to the parent window
    Then Logout from the system
    # 9. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 10. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 11. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Returned For Action"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  # 6. Onboard = publish with questionnaire, IDD, approve request
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## 7. IDD
    Then Click on "Begin" button at the "Supplier Risk review" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    # 8. Approve request
    Then Wait for 3 seconds
    Then Click on Toggle button
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
    # 9. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 10. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 11. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Onboarded"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Accepted onward status with the other buyer (UnRegistered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 5. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Accepted Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 6. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "UnRegistered" Supplier Contact email address on Invite Supplier modal
    Then Enter "UnRegistered" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 7. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "UnRegistered" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "UnRegistered" is present "true"
    Then Logout from the system
    # 8. IBM buyer unregistered email
    Then Verify Email received in "UnRegistered" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 9. Nokia admin supplier will receive an email
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 10. My buyer page of the accepted user
    Given Start the application
    When Click on Sign In button
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Accepted Invite"
    # 11. Verify the Accept invitation option under the Action button
    Then Click on the "International Business Machines Corporation" record
    Then Click on Actions button on reading panel
    #Then Show "Accept Invitation" from Actions options "true"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: As a Buyer, I should able to send reminders to the supplier which is exists in the network with pending invites status with the other buyer
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    # 5. Verify email received
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Toggle button
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 6. Reminder email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder Email from Trust Your Supplier"
    Then Click on the email with subject "Reminder Email from Trust Your Supplier"
    Then Show "JOIN NOW" link "true"

  # 13. As a Buyer, I should able to send reminders (until the Supplier accept the link request) : accepted
  @SmokeTest
  Scenario: As a Buyer, I should able to send reminders to the supplier which is exists in the network with Accepted status with the other buyer
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 5. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Accepted Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 6. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 7. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    # 8. Verify the email notification
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 9. Resend email invite
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Toggle button
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 10. Verify the connect link present
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Click on the email with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Show "CONNECT NOW" link "true"

  # 14. As a Buyer, I should able to send reminders (until the Supplier accept the link request) : profile complete
  @SmokeTest
  Scenario: As a Buyer, I should able to send an reminders to the supplier which is exists in the network with profile complete onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 6. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    # 7. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 8. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 9. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Pending Questionnaires"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 10. Login to Resend the email invite
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Toggle button
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 11. Verify if connect link present
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Click on the email with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Show "CONNECT NOW" link "true"

  # 15. As a Buyer, I should able to send reminders (until the Supplier accept the link request) : ready for review
  @SmokeTest
  Scenario: As a Buyer, I should able to send an reminders to the supplier which is exists in the network with ready for review onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 7. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Ready For Review"
    Then Logout from the system
    # 8. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 9. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 10. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 11. Login to resend the invite
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Toggle button
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 12. Verify connect link present
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Click on the email with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Show "CONNECT NOW" link "true"

  # 16. As a Buyer, I should able to send reminders (until the Supplier accept the link request) Returned to supplier
  @SmokeTest
  Scenario: As a Buyer, I should able to send an reminders to the supplier which is exists in the network with Returned to supplier onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 7. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Ready For Review"
    # 8. Return the supplier
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Return to Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes on the return to supplier modal
    Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    Then Click on "Confirm Return to Supplier" primary button on the modal
    Then Wait for 3 seconds
    Then Logout from the system
    # 9. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 10. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 11. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Returned For Action"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 12. Login to resend email invite
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Toggle button
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 13. Verify the connect link present
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Click on the email with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Show "CONNECT NOW" link "true"

  # 17. As a Buyer, I should able to send reminders (until the Supplier accept the link request)	Onboard
  @SmokeTest
  Scenario: As a Buyer, I should able to send an reminders to the supplier which is exists in the network with Onboard onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    #7. IDD
    Then Click on "Begin" button at the "Supplier Risk review" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    # 8. Approve request
    Then Wait for 3 seconds
    Then Click on Toggle button
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
    # 9. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 10. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 11. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Onboarded"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 12. Login to resend the email
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on "Resend Email Invite" button
    Then Switch to the active window
    Then Click on "Resend" primary button on the modal
    Then Switch to the parent window
    Then Logout from the system
    # 13. Verify if connect link present
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Click on the email with subject "Reminder from International Business Machines Corporation to connect on Trust Your Supplier network"
    Then Show "CONNECT NOW" link "true"

  # 18. As a Buyer, I should re-invite supplier on supplier reading pane under action button for declined connection request
  @SmokeTest
  Scenario: As a Buyer, I should re-invite supplier on supplier reading pane under action button for declined connection request
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    #6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 7. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Ready For Review"
    Then Logout from the system
    # 8. Login as IBM buyer to invite the same user
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
    Then Enter same "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter same "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter same "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    # 9. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 10. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    # 11. Decline the request
    Then Click on the "International Business Machines Corporation" record
    Then Click on Actions button on reading panel
    Then Select "Decline Invitation" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Decline" primary button on the modal
    Then Wait for 3 seconds
    Then Show Toast message "Successfully rejected relationship request"
    Then Click on Close icon on the reading panel
    Then Verify "International Business Machines Corporation" status is "Declined Invite"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab

  # 19. As a Buyer, I should able to connect with the supplier from Discover without mention the contact information  (optional contact info)
  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with profile complete onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 6. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    # 7. Login as IBM buyer to invite the same user
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Enter "MultiBuyer" Supplier name and click Enter at supplier search
    Then Wait for 3 seconds
    Then Click on the search button in Discover suppliers
    Then Click on the "MultiBuyer" supplier record displayed
    Then Click on the Connect with this Supplier button
    Then Switch to the active window
    Then Click on the next button on Connect with supplier
    Then Select the "Low Risk" Questionnaire group from the drop down on Connect Supplier form
    Then Click on Next button on Connect with Supplier window
    Then Click on Connect with supplier button on Connect window
    Then Switch to the parent window
    # 8.Check the Liason section on reading panel
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 9. Able to connect now
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Pending Questionnaires"
    Then Switch to the parent window
    Then Logout from the system
    # 10. Login as a IBM buyer can check is the liason info visible
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    #11. Check the Liason section on reading panel
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "MultiBuyer" is present "true"
    Then Logout from the system
    Then Close TYS registration tab

  # 20.  As a Buyer, I should able to connect with the supplier from Discover with mention by providing the new contact information
  @SmokeTest
  Scenario: As a Buyer, I should able to connect with the supplier from Discover with mention by providing the new contact information and admin supplier which is exists in the network with profile complete onward status with the other buyer (Registered email address)
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MultiBuyer" Supplier Company name on Invite Supplier window
    Then Enter "MultiBuyer" Supplier Contact email address on Invite Supplier modal
    Then Enter "MultiBuyer" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "Invitation from Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on "JOIN NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the active window
    Then Click on "I'll do it later" secondary button on the modal
    Then Switch to the parent window
    # 5. Profile complete
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "LT" followed by "" and 12 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Info Page
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Lithuania" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Kaunas" in "County/Region" dropdown
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
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    # 6. Login as  Nokia buyer to check the status of the supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MultiBuyer" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MultiBuyer" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    # 7. Login as IBM buyer to invite the same user
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Enter "MultiBuyer" Supplier name and click Enter at supplier search
    Then Wait for 3 seconds
    Then Click on the search button in Discover suppliers
    Then Click on the "MultiBuyer" supplier record displayed
    Then Click on the Connect with this Supplier button
    Then Switch to the active window
    # 8. Add new contact information
    Then Enter "Connect" Supplier Contact email address on Discover Connect with modal
    Then Enter "Connect" Supplier Confirm Contact email address on Discover Connect with modal
    Then Enter First Name on Invite a New User Modal
    Then Enter Last Name on Invite a New User Modal
    Then Click on the next button on Connect with supplier
    Then Select the "Low Risk" Questionnaire group from the drop down on Connect Supplier form
    Then Click on Next button on Connect with Supplier window
    Then Click on Connect with supplier button on Connect window
    Then Switch to the parent window
    # 9. Check the Liason section on reading panel
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter "MultiBuyer" Supplier name and click Enter at supplier search
    Then Wait for 3 seconds
    Then Click on the search button in Discover suppliers
    Then Click on the "MultiBuyer" supplier record displayed
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "connect" is present "true"
    Then Logout from the system
    # 10 verify New Contact email
    Then Verify Email received in "Connect" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 11 verify Original admin supplier
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    # 12. Able to connect now
    Then Verify Email received in "MultiBuyer" supplier Inbox with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on the email with subject "International Business Machines Corporation wants to connect with you on Trust Your Supplier"
    Then Click on "CONNECT NOW" button in the "MultiBuyer" supplier Email
    Then Switch to "new TYS" tab
    Then Login with the "MultiBuyer" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Verify "International Business Machines Corporation" status is "Pending Invite"
    Then Verify "Nokia Corporation" status is "Pending Questionnaires"
    Then Switch to the parent window
    Then Logout from the system
    # 13. Login as a IBM buyer can check is the liason info visible
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter "MultiBuyer" Supplier name and click Enter at supplier search
    Then Wait for 3 seconds
    Then Click on the search button in Discover suppliers
    Then Click on the "MultiBuyer" supplier record displayed
    Then Show the Contact First and last name "First Name Last Name" is present "true"
    Then Show the Supplier Contact email address of "Connect" is present "true"
    Then Logout from the system
    Then Close TYS registration tab

  @SmokeTest
  Scenario: Verify My Buyers Company Details on My Buyers Page
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then My Buyers Tab Clickable On Dashboard page
    Then Show Buyer Company Name on My Buyers page "International Business Machines Corporation-IBM"
    Then Show Buyer Company Status on My Buyers page "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Toggle button
    Then Change row per page to two hundred
    Then Click on Next button on My Suppliers page
    Then Prev button enabled on My Suppliers page "true"
    Then Click on Prev button on My Suppliers page
    Then Prev button disabled on My Suppliers page "false"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "NCITPC27560"
    Then Click on Enter Key
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "NCITPC"
    Then Click on Enter Key
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "NCITPC"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "IndiaITPC"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "NCITPC27560@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "NCITPC"
    Then Enter Invitee Last Name "IndiaITPC"
    Then Enter Invitee Email "NCITPC27560@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "NCITPC27560"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Sent Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Invited"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Declined"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Action Required radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Action Required radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Action Required"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify title in the Password Configuration of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Show the page title "Password Configuration"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Labels and tooltip in the Password Configuration of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Show "Reset Password (days)" Label
    Then Show "Notify user before (days)" Label
    Then Show "Reset Password (days)" tooltip "Enter the number of days to force a password reset."
    Then Show "Notify user before (days)" tooltip "Enter the number of remaining days to notify the user that their password needs to be reset."
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Default values in the Password Configuration of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Verify the value "90" at "passwordResetDays" input field
    Then Verify the value "7" at "passwordResetNotificationDays" input field
    Then Logout from the system

  @SmokeTest
  Scenario: Verify same values in the Password Configuration fields of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "7" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same Buyer Email registered
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Toast message "Your password will expire in 7 days. To change the password now, click the Username present at the top right corner and select “Change Password”."
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "90" in "Reset Password (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Required fields in the Password Configuration fields of of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "0" in "Reset Password (days)" field
    Then Enter "0" in "Notify user before (days)" field
    Then Show error message "Required" under "Reset Password (days)" field
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify notification when Reset password less than the Notify user before days in the Password Configuration of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "4" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Enter "90" in "Reset Password (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button

  @SmokeTest
  Scenario: Verify title in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show the page title "Password Configuration"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Labels and tooltip in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show "Reset Password (days)" Label
    Then Show "Notify user before (days)" Label
    Then Show "Reset Password (days)" tooltip "Enter the number of days to force a password reset."
    Then Show "Notify user before (days)" tooltip "Enter the number of remaining days to notify the user that their password needs to be reset."
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Default values in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Verify the value "365" at "passwordResetDays" input field
    Then Verify the value "7" at "passwordResetNotificationDays" input field
    Then Logout from the system

  @SmokeTest
  Scenario: Verify same values in the Password Configuration fields of Supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "8" in "Reset Password (days)" field
    Then Enter "8" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show Toast message "Your password will expire in 8 days. To change the password now, click the Username present at the top right corner and select “Change Password”."
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Required fields in the Password Configuration fields of Supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "0" in "Reset Password (days)" field
    Then Enter "0" in "Notify user before (days)" field
    Then Click on Password Configuration nav link on supplier
    Then Show error message "Required" under "Reset Password (days)" field
    Then Show error message "Required" under "Notify user before (days)" field
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify notification when Reset password less than the Notify user before days in the Password Configuration of Supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "4" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show Toast message "Your password will expire in 4 days. To change the password now, click the Username present at the top right corner and select “Change Password”."
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if we are able to Change password of Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click on Profile button
    Then Click on Change password option
    Then Enter password in "Old password" field
    Then Enter New password in "New password" field
    Then Enter Confirm password in "Confirm password" field
    Then Click on Confirm password button
    Then Close TYS tab
    Given Start the application
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if we are able to Change password
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on Profile button
    Then Click on Change password option
    Then Enter password in "Old password" field
    Then Enter New password in "New password" field
    Then Enter Confirm password in "Confirm password" field
    Then Click on Confirm password button
    Then Close TYS tab
    Given Start the application
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data with Country "USA"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "USAUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "USAAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "United States of America"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "San Francisco"
    Then Select State from the dropdown "California"
    Then Enter data in Zip Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "USAAutomation"
    Then Click on "USAAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data with Country "Germany"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "Germany"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Munich"
    Then Enter data in Postal Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "GAutomation"
    Then Click on "GAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data with Country "Canada"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "CUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "Canada"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Toronto"
    Then Select State from the dropdown "Ontario"
    Then Enter data in Postal Code for Canada
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "CAutomation"
    Then Click on "CAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data with Country "France"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "FAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "France"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Paris"
    Then Enter data in Postal Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "FAutomation"
    Then Click on "FAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data by selecting existing location
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Existing"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "ExistAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "exits@contact.com"
    Then Select Add a New Location from the dropdown "Office - X Mall, Near Station"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "ExistAutomation"
    Then Click on "ExistAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Delete the created contact from the list
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Delete"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "DeleteAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "delete@contact.com"
    Then Select Add a New Location from the dropdown "Office - X Mall, Near Station"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "DeletetAutomation"
    Then Click on "DeleteAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Update the created contact from the list
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Update"
    Then Enter data in Last Name field "FirstName"
    Then Enter data in Job Title field "UpdateAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "update@contact.com"
    Then Select Add a New Location from the dropdown "Office - X Mall, Near Station"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "UpdateAutomation"
    Then Click on "UpdateAutomation" Contact
    Then Enter data in Fist Name field "UpdatedData"
    Then Enter data in Last Name field "UpdatedData"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "345435453457"
    Then Enter data in Email field "updated@contact.com"
    Then Click on Update Contact button on Update Contact Modal
    Then Show created contact on Contacts list "Automation"
    Then Click on "Automation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @SmokeTest
  Scenario: Verify mouseover text for First Name on Add a New Contact modal
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Country from the dropdown "United States of America"
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field"
    Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email" tooltip "The official email address of this person. This is a required field."
    Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is a required field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown."
    Then Show "Address Line 1" tooltip "The physical location of this Company. This must be the address of your Company, as it appears on your Company's commercial registration certificate. The commercial registration certificate is a government issued license or certificate that authorizes your Company to conduct business within your country."
    Then Show "Address Line 2" tooltip "Address 2 is an apartment number, suite number, floor number or building name, as mentioned in your Company's commercial registration certificate."
    Then Show "City" tooltip "The name of the city, as mentioned in your Company's commercial registration certificate."
    Then Show "State" tooltip "The name of the State, as mentioned in your Company's commercial registration certificate."
    Then Show "Zip Code" tooltip "The Zip Code of your Company, as mentioned in your Company's commercial registration certificate."
    Then Show "PO Box" tooltip "PO Box"
    Then Show "PO Box Zip Code" tooltip "PO Box Zip Code"
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Conact with valid data with Country "Germany"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "Germany"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Munich"
    Then Enter data in Postal Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "GAutomation"
    Then Click on "GAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Conact with valid data with Country "Canada"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "Canada"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Toronto"
    Then Select State from the dropdown "Ontario"
    Then Enter data in Postal Code for Canada
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "GAutomation"
    Then Click on "GAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Conact with valid data with Country "France"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "FAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select Country from the dropdown "France"
    Then Enter data in Address field "Cross Road"
    Then Enter data in City field "Paris"
    Then Enter data in Postal Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "FAutomation"
    Then Click on "FAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Add a New Contact with valid data by selecting existing location
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Existing"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "ExistAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "exits@contact.com"
    Then Select Add a New Location from the dropdown "Branch - Cross Road"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "ExistAutomation"
    Then Click on "ExistAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Delete the created contact from the list
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Delete"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "DeleteAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "delete@contact.com"
    Then Select Add a New Location from the dropdown "Branch - Cross Road"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "DeletetAutomation"
    Then Click on "DeleteAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Update the created contact from the list
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Update"
    Then Enter data in Last Name field "FirstName"
    Then Enter data in Job Title field "UpdateAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "update@contact.com"
    Then Select Add a New Location from the dropdown "Branch - Cross Road"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "UpdateAutomation"
    Then Click on "UpdateAutomation" Contact
    Then Enter data in Fist Name field "UpdatedData"
    Then Enter data in Last Name field "UpdatedData"
    Then Enter data in Job Title field "UpdateAutomation"
    Then Enter data in Primary Phone field "345435453457"
    Then Enter data in Email field "updated@contact.com"
    Then Click on Update Contact button on Update Contact Modal
    Then Switch to the active window
    Then Click on "UpdateAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 9 digits for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding a New Location with only required fields for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "470 Route 211 East" in Address field
    Then Enter City "Middletown" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Enter data "10940" in PO box field
    Then Click on "Update Location" button on Update Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding a New Location with only required fields for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "476 Tunnel Street" in Address field
    Then Enter City "Devon" in City field
    Then Select "Alberta" in State drop down
    Then Enter "T9G 3K2" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Enter data "78987" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 5 digits for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding a New Location with only required fields for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Antwerpener Str. 47" in Address field
    Then Enter City "Berlin" in City field
    Then Enter "13353" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Enter data "14356" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 5 digits for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding a New Location with only required fields for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "53 Chemin Du" in Address field
    Then Enter City "Montauban" in City field
    Then Enter "82000" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "53 Chemin Du" for France
    Then Enter data "10941" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "53 Chemin Du" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 5 digits for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "12345" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "470 Route 211 East" in Address field
    Then Enter City "Middletown" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Enter data "10940" in PO box field
    Then Click on "Update Location" button on Update Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for Canada for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for Canada for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "476 Tunnel Street" in Address field
    Then Enter City "Devon" in City field
    Then Select "Alberta" in State drop down
    Then Enter "T9G 3K2" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Enter data "78987" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 5 digits for Germany
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for Germany
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for Germany for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Antwerpener Str. 47" in Address field
    Then Enter City "Berlin" in City field
    Then Enter "13353" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Enter data "14356" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Location added when postal code is 5 digits for France
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete Location Functionality for France for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update Location Functionality for France for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "53 Chemin Du" in Address field
    Then Enter City "Montauban" in City field
    Then Enter "82000" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "53 Chemin Du" for France
    Then Enter data "10941" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "53 Chemin Du" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding new "Individual" ownership functionality by selecting existing contacts
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Enter data in Job Title field "ExistAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select from existing contacts
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify Individual ownership added
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding new "Individual" ownership functionality by adding new contact from Add ownership modal
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Switch to the parent window
    Then Verify Individual ownership added
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding new "Parent Company" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding new "Ultimate Parent Company" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Adding new "Entity or Organization" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete "Individual" Ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Verify if Individual ownership card is deleted
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete "Parent Company" Ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Verify if ownership card is deleted
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete "Ultimate Parent Company" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Verify if ownership card is deleted
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Delete "Entity or Organization" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Verify if ownership card is deleted
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update "Individual" Ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the Individual ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update "Parent Company" Ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update "Ultimate Parent Company" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Update "Entity or Organization" ownership functionality
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click "Your Profile" tab
    Then Logout from the system

  @SmokeTest
  Scenario: Verify if you are able to accept the questionnaires in the pending tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify if there are accepted questionnaire in the publish tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on published tab at Assigned questionaire
    Then Verify if "Import Export Compliance - IBM" questionnaire present in the published tab
    Then Verify if "Trade Compliance" questionnaire present in the published tab
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify if there questionnaire is Downloading in the publish tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Click on Do it later button
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on published tab at Assigned questionaire
    Then Verify if "Import Export Compliance - IBM" download questionnaire clickable
    Then Show Toast message "Downloading..."
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Accepted Invite
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Maggie" Supplier Company name on Invite Supplier window
    Then Enter "Maggie" Supplier Contact email address on Invite Supplier modal
    Then Enter "Maggie" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Maggie" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Maggie" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
    Then Enter "1234567" in "Postal Code" field
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
    Then Click on Do it later button
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
    Then Enter "Maggie" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Accepted Invite"
    Then Logout from the system
    Then Login with the "Maggie" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Accepted Invite"
    Then Logout from the system

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Pending Invite
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Cuticura" Supplier Company name on Invite Supplier window
    Then Enter "Cuticura" Supplier Contact email address on Invite Supplier modal
    Then Enter "Cuticura" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Click on User dropdown on My Suppliers page
    Then Enter "Cuticura" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Pending Invite"
    Then Logout from the system

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Declined Invite
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Maggie" Supplier Company name on Invite Supplier window
    Then Enter "Maggie" Supplier Contact email address on Invite Supplier modal
    Then Enter "Maggie" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Maggie" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Maggie" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Morocco" in "Country/Region" dropdown
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    #Then Click on Declined
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
    Then Enter "Maggie" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Declined Invite"
    Then Logout from the system

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as ReadyForReview
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Maggie" Supplier Company name on Invite Supplier window
    Then Enter "Maggie" Supplier Contact email address on Invite Supplier modal
    Then Enter "Maggie" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Maggie" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Maggie" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
    Then Enter "1234567" in "Postal Code" field
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
    Then Click on Do it later button
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    # Then Enter "EL" followed by "" and 9 numbers in "VAT Identification Number" field under "Tax Details"
    # Then Upload "Tax Document" in "PDF" format
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
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
    Then Select "Moroccan dirham (MAD)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
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
    Then Enter "Maggie" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system
    Then Login with the "Maggie" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Awaiting Review"

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Returned to Supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Suppliers Menu
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "TataGold" Supplier Company name on Invite Supplier window
    Then Enter "TataGold" Supplier Contact email address on Invite Supplier modal
    Then Enter "TataGold" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "TataGold" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "TataGold" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
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
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
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
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Moroccan dirham (MAD)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Suppliers Menu
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "TataGold" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Return to Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes on the return to supplier modal
    Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    Then Click on "Confirm Return to Supplier" primary button on the modal
    Then Wait for 3 seconds
    #Then Show Toast message "International Business Machines Corporation has updated "
    Then Switch to the parent window
    # Verify status return to supplier
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "TataGold" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "TataGold" supplier status "Returned to Supplier"
    Then Logout from the system
    Then Login with the "TataGold" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Returned For Action"

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Profile Complete
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "TrueNote" Supplier Company name on Invite Supplier window
    Then Enter "TrueNote" Supplier Contact email address on Invite Supplier modal
    Then Enter "TrueNote" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Demo" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "TrueNote" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Denmark" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Denmark" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Helsinki" in "City" field
    Then Select "Bornholm" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Danish Private Limited Company" in "Business Type" dropdown under "Tax Details"
    Then Enter "DK" followed by "" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Denmark" in "Country/Region" dropdown
    Then Enter "Helsinki" in "City" field
    Then Select "Bornholm" in "Province" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Danish Krone (DKK)" in "Select your Currency" dropdown
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
    Then Enter "TrueNote" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Profile Complete"
    #Then Verify "Denmark" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    Then Login with the "TrueNote" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Pending Questionnaires"

  @SmokeTest
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Onboarded
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Suppliers Menu
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "TataGold" Supplier Company name on Invite Supplier window
    Then Enter "TataGold" Supplier Contact email address on Invite Supplier modal
    Then Enter "TataGold" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "TataGold" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "TataGold" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
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
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Morocco" in "Country/Region" dropdown
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Tata" in "Regions/Division (provinces/prefectures)" dropdown
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
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Moroccan dirham (MAD)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    #supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Suppliers Menu
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Morocco" Supplier email address in "Invitee Email" field
    #Then Enter Invitee Email "Spainsupplier1600076894427@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    ## Click on Onboard supplier and notification
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    Then Scroll the page
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
    Then Login with the "TataGold" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Onboarded"
    Then Logout from the system
    Then Close TYS registration tab

  @SmokeTest
  Scenario: Verify Buyer is able Update a Trusted Domain
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Validate Actions button Dropdown corresponding to newly added Trusted domain
    Then Click on Toggle button
    Then Choose Update option from the actions dropdown
    Then Switch to the active window
    Then Check Update Trusted Domain Title on the pop up "Update Trusted Email Domain"
    Then Check button on the pop up "Update"
    Then Check button on the pop up "Close"
    Then Enter input in Update Trusted Email Domain field "dispostable123.com"
    Then Click on Update button in the Update Trusted Email Domain popup
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable123.com"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier is able Update a Trusted domain
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Validate Actions button Dropdown corresponding to newly added Trusted domain
    Then Choose Update option from the actions dropdown
    Then Switch to the active window
    Then Check Update Trusted Domain Title on the pop up "Update Trusted Email Domain"
    Then Check button on the pop up "Update"
    Then Check button on the pop up "Close"
    Then Enter input in Update Trusted Email Domain field "dispostable123.com"
    Then Click on Update button in the Update Trusted Email Domain popup
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable123.com"
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Buyer is able delete a Trusted domain
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Click on Toggle button
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Check Delete Trusted Domain Title on the pop up "Delete Trusted Email Domain"
    Then Check button on Delete trusted Domain pop up "Delete"
    Then Check button on Delete trusted Domain pop up "Close"
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Supplier is able delete a Trusted domain
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Check Delete Trusted Domain Title on the pop up "Delete Trusted Email Domain"
    Then Check button on Delete trusted Domain pop up "Delete"
    Then Check button on Delete trusted Domain pop up "Close"
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Australia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Australia" Supplier Company name on Invite Supplier window
    Then Enter "Australia" Supplier Contact email address on Invite Supplier modal
    Then Enter "Australia" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Australia" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Australia" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Australia" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Victoria" in "State or Territory" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Sole Trader" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 9 digit numeric data in "Tax File number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Click on "Next Step" button
    Then Click on "Next Step" button on Locations page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Australia" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
    Then Select "Victoria" in "State or Territory" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button on Locations page
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
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
    Then Select "Australian Dollar (AUD)" in "Select your Currency" dropdown
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
    Then Enter "Australia" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Onboard Australia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Australia" Supplier Company name on Invite Supplier window
    Then Enter "Australia" Supplier Contact email address on Invite Supplier modal
    Then Enter "Australia" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Australia" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Australia" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Australia" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Victoria" in "State or Territory" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Sole Trader" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 9 digit numeric data in "Tax File number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Australia" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
    Then Select "Victoria" in "State or Territory" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Australian Dollar (AUD)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    ## publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "Australia" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach a file" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Austria supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Austria" Supplier Company name on Invite Supplier window
    Then Enter "Austria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Austria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Austria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Austria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Austria" in "Country/Region" dropdown
    Then Enter "Vienna" in "City" field
    Then Select "Burgenland" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    #Then Upload "Tax Registration Certificate" in "PDF" format
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "AT" followed by "U" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Enter 5 numbers followed by "T" in "Commercial Registration Number" field under "Tax Details"
    Then Enter "AT" followed by "U" and 8 numbers in "EU VAT Identification Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Austria" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Vienna" in "City" field
    Then Select "Burgenland" in "State" dropdown
    Then Enter "1234" in "Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
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
    Then Enter "Austria" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Onboard Austria supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Austria" Supplier Company name on Invite Supplier window
    Then Enter "Austria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Austria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Austria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Austria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Austria" in "Country/Region" dropdown
    Then Enter "Vienna" in "City" field
    Then Select "Burgenland" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    #Then Upload "Tax Registration Certificate" in "PDF" format
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "AT" followed by "U" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Enter 5 numbers followed by "T" in "Commercial Registration Number" field under "Tax Details"
    #Then Enter "ATU99999999" in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12345t" in "Commercial Registration Number" field under "Tax Details"
    Then Enter "AT" followed by "U" and 8 numbers in "EU VAT Identification Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Austria" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Vienna" in "City" field
    Then Select "Burgenland" in "State" dropdown
    Then Enter "1234" in "Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
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
    ## supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "Austria" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach a file" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Belgium supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Belgium" Supplier Company name on Invite Supplier window
    Then Enter "Belgium" Supplier Contact email address on Invite Supplier modal
    Then Enter "Belgium" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Belgium" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Belgium" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Belgium" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Ghent" in "City" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "A Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Belgium" in "Country/Region" dropdown
    Then Enter "Ghent" in "City" field
    Then Select "Antwerp" in "Province" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    Then Enter "Belgium" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Onboard Belgium supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Belgium" Supplier Company name on Invite Supplier window
    Then Enter "Belgium" Supplier Contact email address on Invite Supplier modal
    Then Enter "Belgium" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Belgium" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Belgium" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Belgium" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Ghent" in "City" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "A Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Belgium" in "Country/Region" dropdown
    Then Enter "Ghent" in "City" field
    Then Select "Antwerp" in "Province" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    ## supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "Belgium" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Unique fields in basic information page
    Then Enter "Belgium" supplier email in Email Address field "publishedsupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information on Dashboard page "true"
    Then Switch to the active window
    Then Enter "Belgium Legal supplier" in "Legal Business Name" field
    Then Enter "0123456789" in "Company Registration Number" field under "Tax Details"
    Then Enter "0123456789" in "Tax Identification Number" field under "Tax Details"
    Then Enter "BE9876543210" in "VAT Registration Number" field under "Tax Details"
    Then Enter "BE9876543210" in "EU VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Wait for 3 seconds
    Then Logout from the system
    Then Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Belgium" Supplier Company name on Invite Supplier window
    Then Enter "Belgium" Supplier Contact email address on Invite Supplier modal
    Then Enter "Belgium" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Belgium" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Belgium" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Belgium" in "Country/Region" dropdown
    Then Enter "Ghent" in "City" field
    Then Select "Antwerp" in "Province" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "1234" in "Postal Code" field
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
    Then Select "A Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "Belgium Legal supplier" in "Legal Business Name" field
    Then Enter "0123456789" in "Company Registration Number" field under "Tax Details"
    Then Enter "0123456789" in "Tax Identification Number" field under "Tax Details"
    Then Enter "BE9876543210" in "VAT Registration Number" field under "Tax Details"
    Then Enter "BE9876543210" in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    #Jira: SLYN-13038# Then Show Toast message "The Legal Business Name,Company Registration Number,Tax Identification Number,VAT Registration Number,EU VAT Registration Number already exists. Please enter a valid one"
    #Then Wait for 2 seconds
    #Then Close toast message
    Then Enter "BE" followed by "0" and 9 numbers in "VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    #Jira: SLYN-13038# Then Show Toast message "The Legal Business Name,Company Registration Number,Tax Identification Number,EU VAT Registration Number already exists. Please enter a valid one"
    #Then Wait for 2 seconds
    #Then Close toast message
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click "Save and Continue" button 3
    #Jira: SLYN-13038# Then Show Toast message "The Company Registration Number,Tax Identification Number,EU VAT Registration Number already exists. Please enter a valid one"
    #Then Wait for 2 seconds
    #Then Close toast message
    Then Enter "BE" followed by "0" and 9 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Company Registration Number,Tax Identification Number already exists. Please enter a valid one"
    #Then Wait for 2 seconds
    Then Close toast message
    Then Enter 10 digit numeric data in "Company Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Tax Identification Number already exists. Please enter a valid one"
    #Then Wait for 2 seconds
    Then Close toast message
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    ##Jira: SLYN-12120 Then Show Toast message "Basic Information has been saved successfully"
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify publishing Bulgaria supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Bulgaria" Supplier Company name on Invite Supplier window
    Then Enter "Bulgaria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Bulgaria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Bulgaria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Bulgaria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Burgas" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Partnerships" in "Business Type" dropdown under "Tax Details"
    #Then Upload "EU VAT Registration Document" in "PDF" format
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "BG" followed by "" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Burgas" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Bulgarian Lev (BGN)" in "Select your Currency" dropdown
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
    Then Enter "Bulgaria" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Unique fields in basic information page
    Then Enter "Bulgaria" supplier email in Email Address field "publishedsupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information Tab
    Then Switch to the active window
    Then Enter "Bulgaria 8879756548" in "Legal Business Name" field
    Then Enter "757575868764" in "Company Registration Number" field under "Tax Details"
    Then Enter "BG8759757465" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "7575476547" in "VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Logout from the system
    Then Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Bulgaria" Supplier Company name on Invite Supplier window
    Then Enter "Bulgaria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Bulgaria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Bulgaria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Bulgaria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Burgas" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Verify 8 fields are present under "Tax Details" in "Basic information"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Partnerships" in "Business Type" dropdown under "Tax Details"
    #Then Upload "EU VAT Registration Document" in "PDF" format
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "Bulgaria 8879756548" in "Legal Business Name" field
    Then Enter "757575868764" in "Company Registration Number" field under "Tax Details"
    Then Enter "BG8759757465" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "7575476547" in "VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,Company Registration Number,EU VAT Registration Number,VAT Registration Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter 12 digit numeric data in "Company Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,EU VAT Registration Number,VAT Registration Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter "BG" followed by "" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,VAT Registration Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The VAT Registration Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter 10 digit numeric data in "VAT Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "Basic Information has been saved successfully"
    Then Click on Basic Information on Dashboard page "true"
    Then Verify 8 fields are present under "Tax Details" in "Basic information"
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify character limit for Address 1, Address 2, Postalcode, Po Box, PoBox Postalcode in supplier registration for Bulgaria
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Bulgaria" Supplier Company name on Invite Supplier window
    Then Enter "Bulgaria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Bulgaria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Bulgaria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Bulgaria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter Legal Business Name
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Lisbon" in "City" field
    Then Enter "123456789012345678901234567890123456" in "Address Line 1" field
    Then Enter "123456789012345678901234567890123456" in "Address Line 2" field
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Show error message "Must be a valid street address" under "Address Line 1" field
    Then Show error message "Must be a valid street address" under "Address Line 2" field
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter "1234567890123456789012345678901234" in "Address Line 1" field
    Then Enter "1234567890123456789012345678901234" in "Address Line 2" field
    Then Enter "1234" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Enter "1234" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Click Continue button in supplier registration page
    Then Verify no error message is displayed under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Select "Burgas" in "Province" dropdown
    Then Click Continue button in supplier registration page
    Then Verify set password page in supplier registration
    Then Switch to the parent window
    Then Close TYS registration tab

  @SmokeTest
  Scenario: Verify Onboard Bulgaria supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Bulgaria" Supplier Company name on Invite Supplier window
    Then Enter "Bulgaria" Supplier Contact email address on Invite Supplier modal
    Then Enter "Bulgaria" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Bulgaria" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Bulgaria" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Burgas" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Partnerships" in "Business Type" dropdown under "Tax Details"
    #Then Upload "EU VAT Registration Document" in "PDF" format
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "BG" followed by "" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Bulgaria" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Burgas" in "Province" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Bulgarian Lev (BGN)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    ## supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "Bulgaria" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Burkina Faso supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "BurkinaFaso" Supplier Company name on Invite Supplier window
    Then Enter "BurkinaFaso" Supplier Contact email address on Invite Supplier modal
    Then Enter "BurkinaFaso" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "BurkinaFaso" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "BurkinaFaso" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Partnership" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Document" in "PDF" format
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 8 numbers followed by "A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Enter 8 numbers followed by "A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "West African CFA franc (XOF)" in "Select your Currency" dropdown
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
    Then Enter "BurkinaFaso" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Unique fields in basic information page
    Then Enter "BurkinaFaso" supplier email in Email Address field "publishedsupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information Tab
    #Then Click on Basic Information on Dashboard page "true"
    Then Switch to the active window
    Then Enter "BurkinaFaso 58767647654" in "Legal Business Name" field
    Then Enter "758758758755" in "Company Registration Number" field under "Tax Details"
    Then Enter "87587574A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Logout from the system
    Then Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "BurkinaFaso" Supplier Company name on Invite Supplier window
    Then Enter "BurkinaFaso" Supplier Contact email address on Invite Supplier modal
    Then Enter "BurkinaFaso" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "BurkinaFaso" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "BurkinaFaso" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Verify 6 fields are present under "Tax Details" in "Basic information"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "Partnership" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Document" in "PDF" format
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "BurkinaFaso 58767647654" in "Legal Business Name" field
    Then Enter "758758758755" in "Company Registration Number" field under "Tax Details"
    Then Enter "87587574A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,Company Registration Number,Taxpayer Number (IFU) already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter 10 digit numeric data in "Company Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,Taxpayer Number (IFU) already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter 8 numbers followed by "A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click "Save and Continue" button 3
    Then Show Toast message "Basic Information has been saved successfully"
    Then Click on Basic Information on Dashboard page "true"
    Then Logout from the system
    Then Close TYS tab

  @SmokeTest
  Scenario: Verify character limit for Address 1, Address 2, Postalcode, Po Box, PoBox Postalcode in supplier registration for Burkina Faso
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "BurkinaFaso" Supplier Company name on Invite Supplier window
    Then Enter "BurkinaFaso" Supplier Contact email address on Invite Supplier modal
    Then Enter "BurkinaFaso" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "BurkinaFaso" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "BurkinaFaso" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter Legal Business Name
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Lisbon" in "City" field
    Then Enter "123456789012345678901234567890123456" in "Address Line 1" field
    Then Enter "123456789012345678901234567890123456" in "Address Line 2" field
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Show error message "Must be a valid street address" under "Address Line 1" field
    Then Show error message "Must be a valid street address" under "Address Line 2" field
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter "1234567890123456789012345678901234" in "Address Line 1" field
    Then Enter "1234567890123456789012345678901234" in "Address Line 2" field
    Then Enter "1234" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Enter "1234" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Click Continue button in supplier registration page
    Then Verify no error message is displayed under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Click Continue button in supplier registration page
    Then Verify set password page in supplier registration
    Then Switch to the parent window
    Then Close TYS registration tab

  @SmokeTest
  Scenario: Verify Onboard Burkina Faso supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "BurkinaFaso" Supplier Company name on Invite Supplier window
    Then Enter "BurkinaFaso" Supplier Contact email address on Invite Supplier modal
    Then Enter "BurkinaFaso" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "BurkinaFaso" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "BurkinaFaso" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "Partnership" in "Business Type" dropdown under "Tax Details"
    #Then Upload "Tax Document" in "PDF" format
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 8 numbers followed by "A" in "Taxpayer Number (IFU)" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Burkina Faso" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Bale" in "Province/Region" dropdown
    Then Enter "1234" in "Postal Code" field
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
    Then Select "West African CFA franc (XOF)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    ## supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "BurkinaFaso" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Chile supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Chile" Supplier Company name on Invite Supplier window
    Then Enter "Chile" Supplier Contact email address on Invite Supplier modal
    Then Enter "Chile" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Chile" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Chile" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Chile" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Biobio" in "Region" dropdown
    Then Enter "1234567" in "Postal Code" field
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
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    # Then Enter "EL" followed by "" and 9 numbers in "VAT Identification Number" field under "Tax Details"
    # Then Upload "VAT Registration Document" in "PDF" format
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Chile" in "Country/Region" dropdown
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Biobio" in "Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234567" in "Postal Code" field
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
    Then Select "Chilean Peso (CLP)" in "Select your Currency" dropdown
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
    Then Enter "Chile" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready For Review"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify Onboard Chile supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Suppliers Menu
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Chile" Supplier Company name on Invite Supplier window
    Then Enter "Chile" Supplier Contact email address on Invite Supplier modal
    Then Enter "Chile" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Chile" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Chile" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Chile" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Biobio" in "Region" dropdown
    Then Enter "1234567" in "Postal Code" field
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
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Chile" in "Country/Region" dropdown
    Then Enter "Madrid" in "City" field
    Then Enter "King" in "District" field
    Then Select "Biobio" in "Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "1234567" in "Postal Code" field
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
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Chilean Peso (CLP)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Enter "Chile" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    #Then verify the status as "Ready For Review"
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Colombia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Colombia" Supplier Company name on Invite Supplier window
    Then Enter "Colombia" Supplier Contact email address on Invite Supplier modal
    Then Enter "Colombia" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Colombia" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Colombia" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Colombia" in "Country/Region" dropdown
    Then Enter "BE - 23" in "Address Line 1" field
    Then Enter "Bogota" in "City" field
    Then Select "Amazonas" in "Department/Region" dropdown
    Then Enter "123456" in "Postal Code" field
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
    Then Select "Government Entity" in "Business Type" dropdown under "Tax Details"
    Then Enter 10 digits data in "Tax Identification Number" field under "Tax Details" in Colombia format
    Then Click "Upload Tax Registration Document" button
    #Then Upload "Tax Registration Document" in "PDF" format
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Select "Colombia" in "Country/Region" dropdown
    Then Enter "Bogota" in "City" field
    Then Select "Amazonas" in "Department/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "123456" in "Postal Code" field
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
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Colombian Peso (COP)" in "Select your Currency" dropdown
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
    Then Enter "Colombia" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "Colombia" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: Verify publishing Croatia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Croatia" Supplier Company name on Invite Supplier window
    Then Enter "Croatia" Supplier Contact email address on Invite Supplier modal
    Then Enter "Croatia" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Croatia" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Croatia" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Croatia" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Istria" in "County/Region" dropdown
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
    Then Select "Limited Partnership" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    #Then Upload "EU VAT Registration Document" in "PDF" format
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "HR" followed by "" and 11 numbers in "EU VAT Registration Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
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
    Then Enter data in Primary Phone field "33254534571"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Croatia" in "Country/Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "Lisbon" in "City" field
    Then Select "Istria" in "County/Region" dropdown
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
    Then Select "Croatian kuna (HRK)" in "Select your Currency" dropdown
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
    Then Enter "Croatia" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "Croatia" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system

  @SmokeTest
  Scenario: USA Supplier profile publish and Select the "Low Risk" Questionnaire group from the drop down on Connect Supplier form
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
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
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "12" followed by "-" and 7 numbers in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Scroll the page
    Then Click on Save button in Basic Information Page
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
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
    Then Select "Alabama" in "State" dropdown
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
    Then Select "US Dollar (USD)" in "Select your Currency" dropdown
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
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Enter "US" Supplier name and click Enter at supplier search
    Then Click on the "US" supplier record displayed
    Then Click on the Connect with this Supplier button
    Then Switch to the active window
    Then Click on the next button on Connect with supplier
    Then Select the "Low Risk" Questionnaire group from the drop down on Connect Supplier form
    Then Click on Next button on Connect with Supplier window
    Then Click on Connect with supplier button on Connect window
    Then Switch to the parent window
    Then Logout from the system
    Then Access the "US" email from the Mailinator
    Then Click on the email in mailinator with subject "Welcome to Trust Your Supplier"
    Then Click on Login Now button on Supplier connect email
    Then Switch to "new TYS" tab
    Then Login with the "US" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then Enter Nokia Corporation and click Enter at Buyer search
    Then verify the status of the Nokia Corporation as "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS registration tab
    