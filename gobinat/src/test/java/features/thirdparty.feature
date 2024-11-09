Feature: Third Party scenarios

  Background: Start the application
    Given Open the login page
    Then Close the hotjar window

  @sanity @Thirdparty
  Scenario: Verify supplier is able to find Duns Id from Duns look up in External Identifiers
    Then Enter "mailid" supplier in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "External Identifiers" tab
    Then Click on Edit Icon on External identifiers
    Then Click on "Select" suitable selection
    Then Click on "Confirm" button on External Identifiers
    And Wait for 2 seconds
    Then Show the Toast message "Successfully updated an External Identifier linkage"
    Then Logout from the system

  @Thirdparty @TYSFunctionality
  Scenario: Verify supplier is able to view Duns in External Identifiers in Review and publish screen
    Then Enter "mailid" supplier in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click "External Identifiers" tab
    Then Click on Edit Icon on External identifiers
    Then Click on "Select" suitable selection
    Then Click on "Confirm" button on External Identifiers
    And Wait for 13 seconds
    Then Click "Review & Publish" tab
    #Then Click on Review and publish profile button in the review and Publish tab
    Then Show "D-U-N-S Number" filter on Discover page ""
    Then Logout from the system

  @sanity @Thirdparty
  Scenario: Verify supplier is able to edit the DUNs ID
    Then Enter "mailid" supplier in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click "External Identifiers" tab
    Then Click on Edit Icon on External identifiers
    Then Click on Not a suitable match
    Then Click "External Identifiers" tab
    Then Click on Edit Icon on External identifiers
    Then Click on "Select" suitable selection
    Then Click on "Confirm" button on External Identifiers
    And Wait for 13 seconds
    Then Logout from the system

  #@Thirdparty
  Scenario: Verify Supplier is not viewing Dun Number in the basic Information section
    Then Enter "mailid" supplier in Email Address field
    # When Enter EmailAdress in Email Address field "58axwhowfpvtltd@maildrop.cc"
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Basic Information" tab
    And Wait for 15 seconds
    Then Logout from the system

  @Thirdparty @TYSFunctionality
    Scenario: I am able to see D&B - Supplier Risk Assessment, EcoVadis - Sustainability Badge the app details under Risk Insights on Supplier wider screen
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    And Click on Go to my suppliers on Dashboard page "true"
   # And Enter "KOCH INDUSTRIES INC." Supplier in Search field
    #And Wait for 5 seconds
    #Then User can able to see Supplier name in search results
   # Then Wait for 5 seconds
   # When User click on the Supplier name in search results
    #And Wait for 5 seconds
    #When Click on Go to details button on Supplier Synopsis view page
    #And Wait for 3 seconds
    #And Click on Risk Insights tab
   # And Wait for 5 seconds
   # And Enter "D&B - Supplier Risk Assessment" in App Search field
   # And Wait for 5 seconds
   # And Expand "D&B - Supplier Risk Assessment" panel
   # And Wait for 5 seconds
    And Click "Connected Suppliers" tab
    #When Click on Clear All link
    And Enter "ACUITY" Supplier in Search field
    #And Enter "Salesforce" Supplier in Search field
    And Wait for 5 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 10 seconds
    And Enter "EcoVadis - Sustainability Badge" in App Search field
    And Expand "EcoVadis - Sustainability Badge" panel
    Then Shows the title for EcoVadis - Sustainability Badge
    #And Shows View Score Card link
    And Wait for 3 seconds
    Then Logout from the system

  @sanity @Thirdparty
  Scenario: I am able to see Ecovadis IQ and its app request config on market place
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    When Enter "EcoVadis IQ" in Search Market place
    Then Click on "Ecovadisiqapp" on the app
    Then Verify "App Configurations" tab visibility
    Then Click on "App Configurations" tab on supplier notification
    Then Verify the "AppConfiguration" label on App
    Then Verify the "AddAppConfiguration" label on App
    ##Then Verify "Add App Configuration" tab visibility
    Then Verify "App Approval Request Configuration" tab visibility on App
    Then Click on "AppConfiguration" on the app
    #Then Click on "AddAppConfiguration" on the app
    #Then Click on "Add App Configuration" tab on supplier notification
    Then Click on "App Approval Request Configuration" tab on appconfig
    #Then Verify "Add App Configuration" tab visibility
    Then Verify "Inherent Risk Rating" attibute visibility
    Then Verify "Industry Risk Rating" attibute visibility
    Then Verify "Country Risk Rating" attibute visibility
    Then Verify "Supplier Provided DUNS is Blank" attibute visibility
    Then Verify "IQ Ratings Not Found" attibute visibility
    Then Logout from the system

  #precondition Ecovadis app config has to be done
  @Thirdparty
  Scenario: Verify supplier with generated Ecovadis IQ approval
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
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
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
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
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 20 seconds
    Then Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on the Search by supplier name and press Enter
    #Then Click on first record1 of the Search
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Verify the "EcoVadis IQ - Ecovadis" is visible under Approval Source
    Then Click on the "EcoVadis IQ - Ecovadis" under Approval Source
    Then Wait for 5 seconds
    Then Verify the "Approval Request Cause" label on Approval details screen
    Then Verify the "Generated because Supplier Provided DUNS is Blank True is Equal To True" on Approval details screen
    Then Wait for 10 seconds
    Then Logout from the system
