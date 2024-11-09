Feature: easily manage supplier liasions

  #manageliasions
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to View Manage Contacts screen
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 20 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Show contacts in extract page on Dashboard page "true"
        Then Logout from the system
    

  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to  tabular view of all the  supplier contact with columns in manage contacts screen
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 20 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify manage contact column "suppliercontactname"
    Then Verify manage contact column "suppliercontactphonenumber"
    Then Verify manage contact column "suppliercontactjobtitle"
    Then Verify manage contact column "suppliercontactemail"
        Then Logout from the system
    

  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to View to Search bar first name or last name or email ID or supplier’s business name
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 20 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify manage contact column "suppliercontactsearch"
        Then Logout from the system
    
	
  #(export issue in integration)
  @Regression @Supplier @manageliasions2
  Scenario: Verify if Buyer is able to  select  Export All and Cancel buttons in black bar on the top of table
    Then Enter data in Email Address field "ramanokiint@mailinator.com"
	#When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 10 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Click on contactall check box
    Then Verify manage contact column "exportall"
    Then click on manage contact column "exportall"
    Then verify the toast message on exporting contacts "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes."
    Then Click on contactall check box
    Then Verify manage contact column "exportcancel"
    Then click on manage contact column "exportcancel"
    Then verify the toast message on exporting contacts "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes."
    Then Click on contactall check box
    Then Verify manage contact column "ExportSelected"
    Then click on manage contact column "ExportSelected"
    Then verify the toast message on exporting contacts "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes."
    Then Logout from the system

  @Regression @Supplier @manageliasions @manageliasions
  Scenario: Filter By on Manage Contacts screen on buyer Persona
    When Enter data in Email Address field
    #Then Enter data in Email Address field "ramabtuat@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 10 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Click on filters on managecontacts
    Then Switch to the active window
    Then Verify user is able to see Contact Type as 1st accordion in Manage Contact filters
    Then Verify User able to see search and multi-select dropdown list for all the contact types in Contact type field
    Then Verify User should be able to select multiple list of contact type in Contact type field in Filters
	Then Verify if user able to see all the other Connected Suppliers screen filters in Manage contact filters
    Then Click on Search button on filterby in manage contact screen
    Then Verify if user able to see all the other Connected Suppliers screen filters in Manage contact filters
	Then Wait 5 seconds
    Then Logout from the system

  @Regression @Supplier @manageliasions
  Scenario: Exporting the contacts on supplier persona’s
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Click on contactall check box
    Then Verify manage contact column "exportall"
    Then Verify A black bar on the top of the table
    Then Click on contactall check box
    Then Wait for 10 seconds
    Then Verify A black bar on the top of the table disappear
    Then Click on multiple contactall check box "managecontactcheckboxes"
    Then User is able to see Export Selected on black bar
    Then Logout from the system

  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to View management contact type label captured on the supplier manage contacts screen
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    #Then Enter "Argentina" Supplier Company name on Invite Supplier window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    #Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Select the "govtest" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify Email received in "Argentina" supplier Inbox with subject "Trust Your Supplier"
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    #Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
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
    Then Click on Do it later button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    #Basic info
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then Select Date on Date Established field
    Then Select "June" on Starting month of the fiscal year field
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    #external identifiers
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "GLEIF" find Id
    Then Wait for 2 seconds
    Then Click "Moodys Analytics" find Id
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Switch to the new window
    Then Wait for 2 seconds
    Then Click on the next step button
    # Management, CEO
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Enter "firstName" as "Rala" on management window
    Then Enter "lastName" as "dan" on management window
    Then Select the "1992" year from the drop down
    Then Enter "title" as "CEO" on management window
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter "email" as "ramasupeeebuyer@mailinator.com" on management window
    Then Wait for 5 seconds
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    # Management, CFO
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Enter "firstName" as "Rmina" on management window
    Then Enter "lastName" as "dann" on management window
    Then Select the "1996" year from the drop down
    Then Enter "title" as "CFO" on management window
    Then Enter phone number "9844543210" in "Primary Phone" field
    Then Enter "email" as "ramaeeaa@mailinator.com" on management window
    Then Wait for 5 seconds
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    # Management, DOS
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Enter "firstName" as "Romina" on management window
    Then Enter "lastName" as "dann" on management window
    Then Select the "1996" year from the drop down
    Then Enter "title" as "DOS" on management window
    Then Enter phone number "985848159" in "Primary Phone" field
    Then Enter "email" as "ramabuyer@mailinator.com" on management window
    Then Wait for 5 seconds
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    #ownership
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    #Romina dann - DOS , 1996
    #Then Select the option "Romina Dann - DOS , 1996" for Ownership on the Add a new Individual modal
    Then Select the option "Add a new Ownership" for Ownership on the Add a new Individual modal
    Then Enter "firstName" as "Rosy" on management window
    Then Enter "lastName" as "rabindra" on management window
    Then Select the "1994" year from the drop down
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    #CR
    Then Click No radio button for CorpRelations
    Then Click on "Save and Continue" button on leftmenu
    Then Wait for 5 seconds
    Then Click on "Review and Publish Profile" button on leftmenu
    Then Click on "Publish" button on page
    Then Wait for 10 seconds
    Then Show Supplier Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "rala"
    Then Click on clear input button on manage contacts
    Then Wait for 10 seconds
    Then Verify new contact in mangement contact "Rmina"
    Then Click on clear input button on manage contacts
    Then Wait for 10 seconds
    Then Verify new contact in mangement contact "Romina"
    Then Click on clear input button on manage contacts
    Then Logout from the system

  #Questionnaire contact
  #Question not there in INT
  @Regression @Supplier @manageliasion
  Scenario: Verify if Buyer is able to View contact type label captured based on the tagging by the supplier
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    #Then Enter "Argentina" Supplier Company name on Invite Supplier window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    #Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Select the "govtest" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify Email received in "Argentina" supplier Inbox with subject "Trust Your Supplier"
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    #Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
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
    Then Click on Do it later button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Click "Questionnaires" tab
    Then Click on Begin Questionnaire button for "Government Relations - IBM"
    ###Verify Buttons visibility-Government Relations - IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Government Relations - IBM
    Then Verify visibility of question 1 is "Will your Company be responsible for providing services to IBM"
    Then click on radio button for question "Will your Company be responsible for providing services to IBM" is "YES"
    Then Verify visibility of subtext is "Please explain"
    Then Verify visibility of question 2 is "Will your company be responsible representing IBM or IBM interests"
    Then click on radio button for question "Will your company be responsible representing IBM or IBM interests" is "YES"
    Then Verify visibility of subtext is "Please explain"
    Then Verify visibility of question 3 is "Please identify the person completing this questionnaire."
    #answering questionnaires-Government Relations - IBM
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then click on Assign a Contact Button
    Then Switch to the active window
    Then click on dropdown
    Then Select the option "Add a New Contact" on the Assign a Contact modal
    Then Enter "firstName" as "Rossissy" on management window
    Then Enter "lastName" as "rabissnsdra" on management window
    Then Enter "title" as "relation manager" on management window
    Then Enter phone number "985848159" in "Primary Phone" field
    Then Enter "email" as "governrelationship@mailinator.com" on management window
    Then click on Assign a Contact
    ### publish-Government Relations - IBM
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Wait for 20 seconds
    Then Show Supplier Contact tab on Dashboard page "true"
    Then Click "Contacts/Locations" tab
    Then Verify new contact in mangement contact "Rossissy"
    Then Logout from the system

  #In Integration we dont have questionnaire
  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to view questonnaire contact type
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "governrelationship@mailinator.com"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Verify "Government Relations Contact" contact type
    Then Click on Close icon on modal
    Then Logout from the system

  @Regression @Supplier @manageliasions
  Scenario: Supplier persona contact screen changes, toast messages upon adding contacts
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify "Name" manage contact column
    Then Verify "Job Title" manage contact column
    Then Verify "Phone Number" manage contact column
    Then Verify "Email" manage contact column
    Then Verify "Linked Buyers" manage contact column
    Then Verify if user able to view  add or modify the contact information
    Then Click on Cancel Update
    Then Wait for 5 seconds
    Then Click on overflow button on supplier contact
    Then Wait for 5 seconds
    #Then Verify update and delete option on supplier contact
    Then Verify "suppliercontactaddcontact" button on Supplier contact page
    Then Verify "suppliercontactnextpage" button on Supplier contact page
    Then Verify "suppliercontactsearch" button on Supplier contact page
    Then Click on Cancel Update
    Then Click on multiple contactall check box "suppliercontactcheckboxex"
    Then Click on "suppliercontactcancel" button on supplier contact page
    Then Click on "suppliercontactaddcontact" button on supplier contact page
    Then Switch to the active window
    Then Verify Mandatory fields on supplier update contact
    Then Enter "suppliercontactfirstname" on supplier contact page "Automationdemoq"
    Then Enter "suppliercontactlastname" on supplier contact page "Testdemoe"
    Then Enter "suppliercontactjobtitle1" on supplier contact page "supplierqaa"
    Then Enter "suppliercontactprimaryphone" on supplier contact page "9874567853"
    Then Enter "suppliercontactemail1" on the supplier contact page "automationscvbtest@mailinator.com"
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is saved successfully."
    Then Wait for 5 seconds
    Then Click on "suppliercontactaddcontact" button on supplier contact page
    Then Enter "suppliercontactfirstname" on supplier contact page "Automationdemoq"
    Then Enter "suppliercontactlastname" on supplier contact page "Testdemoe"
    Then Enter "suppliercontactjobtitle1" on supplier contact page "supplierqaa"
    Then Enter "suppliercontactprimaryphone" on supplier contact page "9874567853"
    Then Enter "suppliercontactemail1" on supplier contact page "automationscvbtest@mailinator.com"
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "The contact you are trying to create already exists. You may try creating a new one with different email address"
    Then Click on Cancel Update
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "ramaleelauat@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "Automation"
    Then Logout from the system

  @Regression @Supplier @manageliasions2
  Scenario: Supplier updating a contact upon clicking on row
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    #clicking on a row
    Then Click on overflow button on supplier contact
    Then Switch to the active window
    Then Enter "suppliercontactfirstname" on supplier contact page "ram"
    Then Enter "suppliercontactlastname" on supplier contact page "rabissnsdra"
    Then Enter "suppliercontactjobtitle1" on supplier contact page "relation manager"
    Then Enter "suppliercontactprimaryphone" on supplier contact page "98745467853"
    #Then Enter "suppliercontactemail1" on the supplier contact page "auto"
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is updated successfully."
    And Logout from the system

  @Regression @Supplier @manageliasions2
  Scenario: Verify if Buyer is able to add contact type label assigned in bank account
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Click on "Add Accounts Receivable Contact" button on leftmenu
    Then Enter "firstName" as "Rosseyy" on management window
    Then Enter "lastName" as "rabindra" on management window
    #Then Enter Contact "lastName" on bank account contact window
    #Then Enter Contact "firstName" on bank account contact window
    Then Enter Contact "title" on bank account contact window
    Then Enter Contact "email" on bank account contact window page
    Then click on save button on bank account contact window
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter value for Bank Account Number "9581591155"
    Then Enter value for Bank Routing Number "23634795651"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    #Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "sbicontact"
    Then Enter value for Bank Contact Number "9886543210"
    Then Wait for 3 seconds
    Then Click "Save" button 6
    And Click on the save in Address verification
    Then Click on link this Account button
    #Then Click on link this Account button
    Then Wait for 5 seconds
    Then Click "Contacts/Locations" tab
    Then Verify new contact in mangement contact "Rossey"
    Then Wait 5 seconds
    Then Logout from the system

  #Then Close TYS tab
  #Given Start the application
  #buyer side contact type
  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to view Bank contact type
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "Rosseyy"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Verify "Accounts Receivable Contact" contact type
    Then Click on Close icon on modal
    And Logout from the system

  
    @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to view Customer relationship contact contact type
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "Rama"
    Then Wait for 5 seconds
    Then Verify Greentickmark after contact type
    Then Click on contact type segment
    Then Verify "Customer Relationship Contact" contact type
    Then Click on Close icon on modal
    And Logout from the system

  @Regression @Supplier @manageliasions
  Scenario: Verify if Buyer is able to view Management contact type
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    # Management, CEO
    Then Verify new contact in mangement contact "ramasupeeebuyer@mailinator.com"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Switch to the active window
    Then Verify "Chief Executive Officer or Equivalent" contact type
    Then Click on Close icon on modal
    # Management, CFO
    Then Verify new contact in mangement contact "Rmina"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Switch to the active window
    Then Verify "Chief Financial Officer or Equivalent" contact type
    Then Click on Close icon on modal
    # Management, DOS
    Then Verify new contact in mangement contact "Romina"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Switch to the active window
    Then Verify "Director of Sales or Equivalent" contact type
    Then Click on Close icon on modal
    Then Logout from the system

  #buyer end profile
  @Regression @Supplier @manageliasions @test
  Scenario: Buyer is able to invite relationship contacts, resend and able to view right drawer upon clicking on contacts row
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier modal "venusplaneti@maildrop.cc"
    Then Enter Confirm Contact Email Address on Invite Supplier modal "venusplaneti@maildrop.cc"
    Then Enter Contact First Name on Invite Supplier window "veinnai"
    Then Enter Contact Last Name on Invite Supplier window "Builderss"
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #verify invite relationship contact
    Then Click on the Search by supplier name and press Enter
    Then Verify as a buyer is able to view right drawer upon clicking on row
    Then Click on "Close" button on leftmenu
    Then Click on "Invite Relationship Contact" button on leftmenu
    #Then enter the content in the right drawer
    Then Enter First Name on Invite a New User Modal "ramaaani"
    Then Enter Last Name on Invite a New User Modal "Leelasri"
    Then Enter Email on Invite a New User Modal "inviterelationshiip@maildrop.cc"
    Then Enter Confirmation Email on Invite a New User Modal "inviterelationshiip@maildrop.cc"
    Then Select "French Canadian" in "Contact's Preferred Language" Prefered language dropdown Value
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Toast message "Liaison successfully invited"
    Then Verify as a buyer is able to view right drawer upon clicking on row
    Then Click on "Close" button on leftmenu
    #resend scenario
    #Then Verify the Resend button on leftmenu
    Then verify the "Resend Invite" button is enabled
    Then Click on Resend button on leftmenu
    Then Click on "Cancel" button on leftmenu
    Then Click on Resend button on leftmenu
    Then Select "French Canadian" in "Contact's Preferred Language" Prefered language dropdown Value
    Then Verify "Resend Invite" button is enabled under "contacts screen"
    Then Click on button "Resend Invite" for questionare
    Then Show Toast message "A reminder email and notification has been sent to venusplaneti@maildrop.cc"
    Then Logout from the system

  #Questionnaire contact
  @Regression @Supplier @manageliasion
  Scenario: Verify if Buyer is able to View questionnaire contact type label captured based on the tagging by the supplier
    #Then Enter data in Email Address field "sravyalenovouat@mailinator.com"
	Then Enter data in Email Address field "ramavodaint@maildrop.cc"
    #Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    #Then Enter "Argentina" Supplier Company name on Invite Supplier window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    #Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    #Then Enter Contact First Name on Invite Supplier window
    #Then Enter Contact Last Name on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window "vennai"
    Then Enter Contact Last Name on Invite Supplier window "Buderss"
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Select the "govtest" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Vodafone is inviting you to join Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "Vodafone is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
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
    Then Click on Do it later button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    #health and safety questonnaire
    Then Click "Questionnaires" tab
    Then Click on Begin Questionnaire button for "Health and Safety - Vodafone"
    ###Verify Buttons visibility Purpose Led RFQ - Vodafone
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Health and Safety - Vodafone
    Then Verify visibility of question 1 is "Does your organization have employee medical and compensation insurance in place to cover the costs associated with any work place incidents? Public Liability Insurance"
    Then click on radio button for question "Does your organization have employee medical and compensation insurance in place to cover the costs associated with any work place incidents? Public Liability Insurance" is "YES"
    Then Verify visibility of subtext is "Please provide details of the insurer"
    Then Enter answer for question 1 as "answer"
    Then Verify visibility of question 2 is "Is there a function / appointed person responsible for Health & Safety Management Issues?"
    Then click on radio button for question "Is there a function / appointed person responsible for Health & Safety Management Issues?" is "YES"
    #answering questionnaires-Health and Safety - Vodafone
    #Then Enter answer for question 2 as "answer"
    Then click on Assign a Contact Button
    Then Switch to the active window
    Then click on dropdown
    Then Select the option "Add a New Contact" on the Assign a Contact modal
    Then Enter "firstName" as "Hsissuemanager" on management window
    Then Enter "lastName" as "rabissnsdra" on management window
    Then Enter "title" as "relation manager" on management window
    Then Enter phone number "985848159" in "Primary Phone" field
    Then Enter "email" as "vodafonehealthmanager@maildrop.cc" on management window
    Then click on Assign a Contact
    Then Verify visibility of question 3 is "Provide details of H&S performance against the following performance indicators"
    Then click on radio button for question "Provide details of H&S performance against the following performance indicators" is "QUESTION_HEALTH_AND_SAFETY_VODAFONE_INDICATORS_OPTION_NA"
    Then Verify visibility of question 4 is "How many H&S investigations, prosecutions or prohibition notices have there been in the last 3 years?"
    Then click on radio button for question "How many H&S investigations, prosecutions or prohibition notices have there been in the last 3 years?" is "QUESTION_HEALTH_AND_SAFETY_VODAFONE_PROSECUTIONS_OPTION_0"
    Then Verify visibility of question 5 is "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001 or equivalent?"
    Then click on radio button for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001 or equivalent?" is "NO"
    Then Verify visibility of question 6 is "Is an alternative to OHSAS 18001 used?"
    Then click on radio button for question "Is an alternative to OHSAS 18001 used?" is "NO"
    Then Verify visibility of question 7 is "Is your company B Corp certified?"
    Then click on radio button for question "Is your company B Corp certified?" is "NO"
    Then Verify visibility of question 8 is "Does your organization operate an Environmental or connected Management System that is certified against ISO 14001, ISO 50001 or equivalent? Yes, Attach with Expiration Date"
    Then click on radio button for question "Does your organization operate an Environmental or connected Management System that is certified against ISO 14001, ISO 50001 or equivalent? Yes, Attach with Expiration Date" is "NO"
    Then verify the "Do you have another rating or certification relate" questionnaire is displayed
    #Then Verify visibility of question 9 is "Do you have another rating or certification related to Sustainability? If so, attach or link"
    Then click on radio button for question "Do you have another rating or certification relate" is "NO"
    Then Verify visibility of question 10 is "Does your organization operate a labor Management System that is certified against SA 8000? Yes, Attach with Expiration Date"
    Then click on radio button for question "Does your organization operate a labor Management System that is certified against SA 8000? Yes, Attach with Expiration Date" is "NO"
    ### publish-Health and Safety - Vodafone
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Wait for 20 seconds
    Then Show Supplier Contact tab on Dashboard page "true"
    Then Click "Contacts/Locations" tab
    Then Verify new contact in mangement contact "Hsissuemanager"
    Then Logout from the system

  #vodafone #Health and safety
  @Regression @Supplier
  Scenario: Verify if Buyer is able to view questonnaire contact type
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "sravyalenovouat@mailinator.com"
    #Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "Hsissuemanager"
    Then Wait for 5 seconds
    Then Click on contact type segment
    Then Verify "Health & Safety Issue Manager - Vodafone" contact type
    Then Click on Close icon on modal
        Then Logout from the system
    

  @Regression @Supplier @manageliasions @TYSFunctionality
    Scenario: Verify if supplier is able to contacts and locations screen
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Contacts" button
    Then Verify "contattab" tab is displayed
    Then Click on "contattab" tab on conatcslocation screen
    Then Enter "suppliercontactfirstname" on supplier contact page "Autoomatioontest"
    Then Enter "suppliercontactlastname" on supplier contact page "Testtdraam"
    Then Enter "suppliercontactjobtitle1" on supplier contact page "supplsieerqaa"
    Then Enter "suppliercontactprimaryphone" on supplier contact page "987444567853"
    Then Enter "suppliercontactemail1" on the supplier contact page "supplier"
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is saved successfully."
    Then Verify the visibility of "Locations" button
    Then click on the "Locations" tab
    Then Verify "locationtab" tab is displayed
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    #Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system

  #ellipse blocker
  @Regression @Supplier
  Scenario: Supplier deleting a contact
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify delete option on supplier contact "siva"
        Then Logout from the system
    

  #ellipse causing issue
  @Regression @Supplier @TYSFunctionality
  Scenario: Supplier Updating a contact
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify supplier is able to Update supplier contact "vimalte"
    Then Enter "firstName" as "vimalteii" on update contact screen
    Then Enter "middleName" as "testdraewem" on update contact screen
    Then Enter "lastName" as "rabissdnsdra" on update contact screen
    Then Enter "title" as "relation manager" on update contact screen
    Then Enter "primaryPhone" as "9581591155" on update contact screen
    Then Enter "email" as the "leelaramaaaaa" on update contact screen
    Then Click on "Save" button on leftmenu
    And Logout from the system

  @Regression @Supplier @manageliasions2
  Scenario: Verify if multi Buyer is able to View contact type label captured based on the tagging by the supplier
    Then Enter data in Email Address field "stainvitesupplier@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    #Then Click on Actions button on reading panel
    #Then Verify IBM status is "Pending Invite"
    Then Click on accept status
    Then Click on customerrelatioship contact
    Then Wait for 5 seconds
    Then Click on Multiselect dropdown contact
    #Then select the 1 option in dropdown
    Then Click on save option on crc
    Then Wait for 5 seconds
    #update
    Then Click on customerrelatioship contact
    Then Wait for 5 seconds
    Then Click on Multiselect dropdown contact
    #Then Update CRC
    Then Click on save option on crc
    And Logout from the system
