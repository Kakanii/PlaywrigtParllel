Feature: Discover Supplier as Buyer

  #Discover
  #@DiscoverSuppliersPagination
  Background: Login as supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Discover tab visibility and status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer 
  Scenario: Verify  title, label, filter  visibility and status on Discover page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    #Then Show "Discoverable Suppliers" title on Dicover page "true"
    Then Show "Filter by" button on Discover page "true"
    Then Click on "Filter by" button on "Discover page"
    #Then Show "Company/Domain Name" filter on Discover page "true"
    Then Show "Tax Geography" filter on Discover page "true"
    Then Show "Country" filter on Discover page "true"
    Then Show "UNSPSC" filter on Discover page "true"
    #Then Show "NAICS" filter on Discover page "true"
    Then Show "Diverse Supplier" filter on Discover page "true"
    Then Show "Profile Completeness" filter on Discover page "true"
    #Then Verify "Company/Domain Name" filter clickable "true"
    Then Verify "Tax Geography" filter clickable "true"
    Then Verify "Country" filter clickable "true"
    Then Verify "UNSPSC" filter clickable "true"
    #Then Verify "NAICS" filter clickable "true"
    Then Verify "Diverse Supplier" filter clickable "true"
    Then Verify "Profile Completeness" filter clickable "true"
    Then Click on Close icon on modal
    Then Show Search field in discover page "true"
    Then Verify Search field enabled in discover page "true"
    #Then Show "Company Name" column label "true"
    Then Show "Supplier Last Updated" column label "true"
    Then Show "UNSPSC-Segment" column label "true"
    Then Show "Profile Completeness" column label "true"
    Then Logout from the system

  #passed
  @Smoke @Discover @Buyer @SanityCheck
  Scenario: Verify once user clicks on small numbered hyperlink on UNSPSC will open up a view of all segments code applicable for that buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When Wait 10 seconds
    Then Click on Discover tab
    When Wait 5 seconds
    And Click on TYS Discover tab
    When Wait 5 seconds
    Then Click on small numbered hyperlink on UNSPSC
    Then Show UNSPSC dialog
    Then Click on Close icon on modal
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify 'Profile Completeness' column will have 2 values: Joined, Profile Published
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Show "Joined" value on Profile Completeness column
    Then Show "Profile Published" value on Profile Completeness column
    Then Show tooltip when hover on "Joined" value
    Then Show tooltip when hover on "Profile Published" value
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify 'Discoverable Suppliers' list should be available in the list view table in decreasing order of 'Supplier Last Updated'.
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Wait for 15 seconds
    Then Verify list view table is displayed in decreasing order of "Supplier Last Updated"
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Sort icon is diplayed on both 'Supplier Last Updated' and 'Company Name' columns
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Show Sort icon when hover on "Supplier Name" column
    Then Show Sort icon when hover on "Supplier Last Updated" column
    Then Verify "Supplier Name" column is sorted in ascending order
    Then Click on sort icon in "Supplier Name" column
    Then Wait for 10 seconds
    Then Verify "Supplier Name" column is sorted in descending order
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Sort icon on 'Company Name' column is clickabled
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Verify "Supplier Name" column is sorted in ascending order
    Then Click on sort icon in "Supplier Name" column
    Then Verify "Supplier Name" column is sorted in descending order
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer 
  Scenario: Verify Reset Filters button visibility on Apply Filters
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Show "Reset Filters" button in "Apply Filters"
    Then Verify "Reset Filters" button clickable in "Apply Filters"
    Then Click on Close icon on modal
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Search button visibility in Apply Filters
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Show "Search" button in "Apply Filters"
    Then Verify "Search" button clickable in "Apply Filters"
    Then Click on Close icon on modal
    Then Logout from the system

  #failed-fixed
  @Regression @Discover @Buyer
  Scenario: Verify Company or Domain Name input field visibility on Apply Filters
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Show Company Name input field on Apply Filters right drawer "true"
    Then Wait for 2 seconds
    Then Verify Company Name input field clickable "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Countries dropdown visibility in Country or Region filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Show Countries dropdown in Country filter "true"
    Then Verify Countries drop down clickable "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #failed-fix
  @Regression @Discover @Buyer 
  Scenario: Verify UNSPSC input fields visibility in UNSPSC filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "UNSPSC" filter
    #Then Show "Segment" input field in "UNSPSC" filter "true"
    Then Show "Family" input field in "UNSPSC" filter "true"
    Then Show "Class" input field in "UNSPSC" filter "true"
    Then Show "Commodity" input field in "UNSPSC" filter "true"
    Then Verify "Segment" input field clickable in "UNSPSC" filter "true"
    Then Verify "Family" input field clickable in "UNSPSC" filter "true"
    Then Verify "Class" input field clickable in "UNSPSC" filter "true"
    Then Verify "Commodity" input field clickable in "UNSPSC" filter "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #NA
  @Regression @Discover @Buyer
  Scenario: Verify NAICS input field visibility in NAICS filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "NAICS" filter
    Then Show NAICS input field in NAICS filter "true"
    Then Verify NAICS input field clickable in NAICS filter "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #failed-fix
  @Regression @Discover @Buyer
  Scenario: Verify Diverse Supplier dropdown visibility in Diverse Supplier filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Diverse Supplier" filter
    Then Click on Diverse Supplier dropdown
    #Then Show Diverse Supplier input field in Diverse Supplier filter "true"
    #Then Verify Diverse Supplier input field clickable in Diverse Supplier filter "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer
  Scenario: Verify Profile Completeness input fields visibility in Profile Completeness filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Profile Completeness" filter
    Then Show "Joined" checkbox in "Profile Completeness" filter "true"
    Then Show "Profile Published" checkbox in "Profile Completeness" filter "true"
    Then Verify "Joined" checkbox clickable in "Profile Completeness" filter "true"
    Then Verify "Profile Published" checkbox clickable in "Profile Completeness" filter "true"
    Then Click on Close icon on modal
    Then Logout from the system

  #Passed
  @Smoke @Discover @Buyer
  Scenario: Verify search result description when no supplier found in discover search using Company or Domain Name filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Enter "no supplier found" in Company or Domain Name filter
    Then Click on "Search" button on "Discover page"
    Then Verify search result description "No records found."
    Then Logout from the system

  #Passed
  @Smoke @Discover @Buyer 
  Scenario: Verify search result description when no supplier found in discover search using Country filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "Egypt" option in "Countries" dropdown
    Then Click on "Search" button on "Discover page"
    Then Verify search result description "No records found."
    Then Logout from the system

  #Passed
  @Smoke @Discover @Buyer
  Scenario: Verify search result description when no supplier found in discover search using NAICS filter
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    #Then Click on "NAICS" filter
    #Then Enter NAICS number in NAICS filter "123456"
    #Then Click on "Search" button on "Discover page"
    #Then Verify search result description "No records found."
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer 
  Scenario: Verify "Clear All" hyperlink visibility when Company or Domain Name filter is selected
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Enter "123456" in Company or Domain Name filter
    Then Click on "Search" button on "Discover page"
    Then Show "Clear" filter on Discover page "true"
    Then Logout from the system

  #Passed
  @Regression @Discover @Buyer 
  Scenario: Verify "Clear All" hyperlink is clickable on page when Countries filter is selected
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "United States of America" option in "Countries" dropdown
    Then Click on "Search" button on "Discover page"
    Then Verify "Clear" filter clickable "true"
    Then Logout from the system

  #Passed
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility on Discover Supplier page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  #failed-fixed
  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @CDCI
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    #And Click on TYS Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    #Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  
  # pagination
  @Smoke @Discover @Buyer @Discoversupplier @TYSFunctionality
  Scenario: As a Buyer, I should be able to discover the Supplier profiles right after they complete the post registration steps
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #Without questionnaire
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    Then Logout from the system
    Then Close TYS tab
    Given Open the login page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 15 seconds
    Then Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system

  #Pass
  @Smoke @Discover @Buyer @CDCI @Sanity
  Scenario: Verify Country filter functionality in discover page
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Select "Alabama" in "State" dropdown
    Then Enter "124234354" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 5 seconds
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "United States of America" option in "Countries" dropdown
    Then Verify "Search" button clickable in "Apply Filters"
    Then Wait for 10 seconds
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system

  
  @Smoke @Discover @Buyer 
  Scenario: Verify UNSPSC filter functionality in discover page
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Select "Alabama" in "State" dropdown
    Then Enter "124234354" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
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
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Click on "Filter by" button on "Discover page"
    Then Click on "UNSPSC" filter
    Then Click on "Segment" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Live Plant and Animal Material and Accessories and Supplies" option in "Segment" dropdown
    Then Click on "Segment" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Family" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Live animals" option in "Family" dropdown
    Then Click on "Family" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Class" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Livestock" option in "Class" dropdown
    Then Click on "Class" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Commodity" sub field dropdown in "UNSPSC" filter
    Then Wait for 3 seconds
    Then Click on "Cats" option in "Commodity" dropdown
    Then Click on "Search" button on "Discover page"
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    #Then Show the supplier in discover searchbox
    Then Logout from the system

  
  @Smoke @Discover @Buyer @CDCI @Sanity
  Scenario: Verify NAICS filter functionality in discover page
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Select "111130" in "NAICS" css dropdown
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
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
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 5 seconds
    Then Click on "Filter by" button on "Discover page"
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "111130"
    Then Click on "Search" button on "Discover page"
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system

  
  @Smoke @Discover @Buyer @CDCI
  Scenario: Verify Profile Completeness filter functionality in discover page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
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
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 5 seconds
    Then Click on "Filter by" button on "Discover page"
    Then Click on "Profile Completeness" filter
    Then Click "Joined" checkbox under Filter By "Profile Completeness"
    Then Click on "Search" button on "Discover page"
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system

  
  @Smoke @Discover @Buyer @CDCI @Sanity
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system

  @Smoke @Buyer @Discover @Discoverquestionnaire 
  Scenario: As a Buyer, discover panel should display standard questionnaire names a supplier has responded on the network
    #Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Enter data in Email Address field " lillyRedhat@mailinator.com"
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip

    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window

    #Then Click on the Click here on Questionnaire page
    #Then Click on the Clear All Link on Assign Questionnaires window
    #Then select Questionnaire Name on Assign Questionnaires window
    #Then Select the "Company Operations" in Dropdown
    #Then Click on Assign button on Assign Questionnaires window
    
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "External Identifiers" tab
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    #Then Click "Find ID" button
    #Then Wait for 5 seconds
    #Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
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
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    #Then Click on Review and publish profile button in the review and Publish tab
    #Then Switch to the active window
    #Then Click on the publish button
    #Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    #Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Wait for 3 seconds
    #Then Enter value at text area for Question
    #Then Select Country for Company Operations Second question
    #Then Click on Yes for Company Operations Third question
    #Then Click on No for Company Operations Fourth question
    #Then Click on No for Company Operations Fivth question
    #Then Click "NO" for Question "6"
    #Then click on Publish Questionnaire Button
    Then Switch to the active window
    #Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    Then Wait for 10 seconds
    Then Search the supplier name in discover searchbox
    Then Click on the supplier in discover searchbox
    Then Show Questionnaire list in discoverable suppliers
    Then Logout from the system

  #####passed
  @Smoke @Discover @Buyer @Discoversupplier
  Scenario: Verify able to see "Link Request Sent" after clicking on "Connect with this Supplier" button
    #Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    Then Click on the supplier in discover searchbox
    #Then Click on the Connect with this Supplier button
    Then Wait for 5 seconds
    #Then Click on Next button
    Then Wait for 5 seconds
    #Then Click on Next button
    #Then Click on connectwithsupplier button
    Then Wait for 10 seconds
    #Then Show "Link Request Sent" on discoverable detail page
    Then Logout from the system

#passed
  @Smoke @Discover @Buyer @Discoversupplier 
  Scenario: Verify able to view supplier profile wide view on Supplier profile sceen when supplier is "Accepted" status
    #Then Enter data in Email Address field "autonokiausr@mailinator.com"
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    #Then Click on the supplier in discover searchbox
    #Then Show badge content "Supplier is registered and creating a profile for the TYS Network" on Supplier profile screen
    #Then Show all "Connect with this Supplier" buttons are "Enable"
    Then Logout from the system

  @Smoke @Discover @Buyer @Discoversupplier
  Scenario: Verify able to view supplier profile wide view on Supplier profile sceen when supplier is "Profile Completed" status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip

    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window

    #Then select Questionnaire Name on Assign Questionnaires window
    #Then Select the "Company Operations" in Dropdown
    #Then Click on Assign button on Assign Questionnaires window

    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Select "Alabama" in "State" dropdown
    Then Enter "124234354" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
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
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Wait for 5 seconds
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 2
    #Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"

    Then Click "External Identifiers" tab
    #Then Click on External Identifiers sub block
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
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
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "autonokiausr@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Wait for 10 seconds
    Then Search the supplier name in discover searchbox
    Then Click on the supplier in discover searchbox
    Then Show badge content "Supplier has published a basic profile to the TYS Network" on Supplier profile screen
    Then Show all "Connect with this Supplier" buttons are "Enable"
    Then Logout from the system

  @Smoke @Discover @Buyer @Discoversupplier 
  Scenario: Verify able to view supplier profile wide view on Supplier profile sceen when supplier is "Ready for Review" status
    #Then Enter data in Email Address field "autonokiausr@mailinator.com"
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    #Then select Questionnaire Name on Assign Questionnaires window
    #Then Select the "Company Operations" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click "Find ID" button
    Then Wait for 5 seconds
    #Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
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
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    #Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    #Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Wait for 3 seconds
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "NO" for Question "6"
    Then click on Publish Questionnaire Button
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Discover tab
    And Click on TYS Discover tab
    Then Wait for 5 seconds
    Then Search the supplier name in discover searchbox
    Then Click on the supplier in discover searchbox
    Then Show badge content "Supplier has their profile plus questionnaires and documents" on Supplier profile screen
    Then Show all "Connect with this Supplier" buttons are "Enable"
    Then Logout from the system

  @Regression @Discover @Buyer @Discoversupplier 
  Scenario: Verify able to view supplier profile wide view on Supplier profile sceen when supplier is "Onboarded" status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "90" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click "Find ID" button
    Then Wait for 5 seconds
    #Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
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
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    #Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    #Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Wait for 3 seconds
    Then Search the supplier name in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    Then Click "No" for the Second Question
    Then Click "No" for the Third Question
    Then Wait for 5 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Wait for 3 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
