Feature: Revalidation Configuration

  #Revalidation Configuration
  #@Revalidation Configuration
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    

  #Revalidation Configuration
  @Regression @Buyer @RevalidationConfiguration
  Scenario: As Buyer, I should be able to see all the lables and input values for Revalidation configuration.
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    #Page title and description
    Then Verify page header "Revalidation Configuration" under Revalidation Configuration
    And Verify the page title description "Frequency based revalidation configuration can be created from this screen for all the onboarded suppliers. Any supplier that has been onboarded and meets the configuration criteria’s will be moved into revalidation process based on the frequency selected." under Revalidation Configuration
    #Button visible
    And Verify "Create Periodic Revalidation" button is visible under "Revalidation configuration"
    And Verify "Create Periodic Revalidation" button is enabled under "Revalidation configuration"

  #Create Revalidation Configuration 
  @Regression @Buyer @RevalidationConfiguration @QuickCheck
  Scenario: As Buyer, I should be able to see all the lables and input values for Create Revalidation configuration.
    When Click "Suppliers" tab
    When Wait 5 seconds
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    And Click on "Create Periodic Revalidation" button
    #Lables visible
    Then Verify "Select Frequency from onboarding date" field label visible under for "Revalidation configuration"
    And Verify "Supplier Category" field label visible under for "Category"
    And Verify "Supplier Category (Commodity Family)" field label visible under for "Category"
    And Verify "IBM Region" field label visible under for "Geo"
    And Verify "IBM Market" field label visible under for "Geo"
    And Verify "IBM Country & ISO Code" field label visible under for "Geo"
    And Verify "Additional Supplier Label" field label visible under for "Supplier Information"
    And Verify "Spend Threshold" field label visible under for "Supplier Information"
    And Verify "Supplier Tax Region" field label visible for "Select Criteria"
    And Verify "Supplier Tax Country" field label visible for "Select Criteria"
    And Verify "Is this a PIF Supplier?" legend field label visible for "PIF"
    And Verify "Is supplier located in a focus country (excluding Italy and Greece)?" legend field label visible for "Supplier Information"
    #dropdown values visible
    And Verify "year-list" select input visible for "Year"
    And Verify "month-list" select input visible for "Month"
    And Verify "Supplier Tax Region" dropdown input visible for "Select Criteria"
    And Verify "Supplier Tax Country" dropdown input visible for "Select Criteria"
    And Verify "Supplier Category" dropdown label input visible for "Category"
    And Verify "Supplier Category (Commodity Family)" dropdown label input visible for "Category"
    And Verify "IBM Region" dropdown label input visible for "Geo"
    And Verify "IBM Market" dropdown label input visible for "Geo"
    And Verify "IBM Country & ISO Code" dropdown label input visible for "Geo"
    And Verify "Additional Supplier Label" dropdown label input visible for "Supplier Information"
    And Verify "Spend Threshold" dropdown label input visible for "Supplier Information"
    #Dropdown value enable
    And Verify "year-list" select input enable for "Year"
    And Verify "month-list" select input enable for "Month"
    And Verify "Supplier Tax Region" dropdown input enable for "Select Criteria"
    And Verify "Supplier Tax Country" dropdown input enable for "Select Criteria"
    And Verify "Supplier Category" dropdown label input enable for "Category"
    And Verify "Supplier Category (Commodity Family)" dropdown label input enable for "Category"
    And Verify "IBM Region" dropdown label input enable for "Geo"
    And Verify "IBM Market" dropdown label input enable for "Geo"
    And Verify "IBM Country & ISO Code" dropdown label input enable for "Geo"
    And Verify "Additional Supplier Label" dropdown label input enable for "Supplier Information"
    And Verify "Spend Threshold" dropdown label input enable for "Supplier Information"
    And Select "1" value from "year-list" label
    And Wait for 2 seconds
    #button visibility
    And Verify Edit button is visible in "Create Periodic Revalidation"
    And Verify "Save" button is displayed under "Create Periodic Revalidation"
    And Verify "Cancel" button is displayed under "Create Periodic Revalidation"
    And Verify "Save & Add More" button is displayed under "Create Periodic Revalidation"
    #button enable
    And Verify Edit button is enable in "Create Periodic Revalidation"
    And Verify "Save" button is enable under "Create Periodic Revalidation"
    And Verify "Cancel" button is enable under "Create Periodic Revalidation"
    And Verify "Save & Add More" button is enable under "Create Periodic Revalidation"
    #tooltips
    And Show "Select Revalidation Frequency" tooltip "Year or Month or both should have value selected. Revalidation date will be calculated and displayed on the supplier profile, from the onboarding date, based on the frequency selected here." in at "Create Periodic Revalidation"
    And Show "Select Supplier Attributes For This Configuration" tooltip "At least one of the parameters below should be selected to save this configuration. Any supplier that meets this configuration criteria will be moved into the revalidation process on the date, based on the frequency selected above." in at "Create Periodic Revalidation"
    And Show "Supplier Tax Region" Tooltip description as "The geography in which the supplier company is registered." in "Create Periodic Revalidation"
    And Show "Supplier Tax Country" Tooltip description as "The Country/Region in which the supplier company is registered." in "Create Periodic Revalidation"

  #Create Revalidation Configuration from buyer side
  @Regression @Buyer @RevalidationConfiguration
  Scenario: As Buyer, I should be able to Configure Revalidation configuration from buyer side.
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    When Click on "Create Periodic Revalidation" button
		Then Select "1" value from "year-list" label
    And Select "4" value from "month-list" label
    And Select "NA" value from "Supplier Tax Region" category
    And Select "United States of America" value from "Supplier Tax Country" category
    When Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown 
    
    @Smoke @Buyer @RevalidationConfiguration @TYSFunctionality @reg
  Scenario: As Buyer, I should be able to see next Periodic Revalidation date after onboard status
    
    #Configure Revalidation
      When Click "Suppliers" tab
      And Wait for 5 seconds
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    And Click on "Create Periodic Revalidation" button
		Then Select "1" value from "year-list" label
    And Select "4" value from "month-list" label
    And Select "EMEA" value from "Supplier Tax Region" category
    And Select "United Kingdom" value from "Supplier Tax Country/Region" category
    And Select "NA" value from "Supplier Tax Region" category
    And Select "United States of America" value from "Supplier Tax Country/Region" category
    #Custom fields
    #dropdowns
    And Select "Global Logistics (GLP)" value from "Supplier Category" custom fields
    And Wait for 5 seconds
    And Select "Facility Site Services (FSS)" value from "Supplier Category (Commodity Family)" custom fields
    And Wait for 3 seconds
    And Select "EMEA" value from "IBM Region" custom fields
    And Select "BENELUX" value from "IBM Market" custom fields
    And Select "Albania (AL)" value from "IBM Country & ISO Code" custom fields
    And Select "Blocked Supplier" value from "Additional Supplier Label" custom fields
    When Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
      When Click "Suppliers" tab
      And Wait for 3 seconds
    When Click on My Suppliers Tab
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
      When Wait 2 seconds
      When Click on the Skip
      When Wait 2 seconds
      When Click on the Skip
      When Wait 2 seconds
    #invite without questionare
      And Click on the Click here on Questionnaire page
      When Wait 5 seconds
      And Click on the Clear All Link on Assign Questionnaires window
      When Wait 5 seconds
      And Click on Assign button on Assign Questionnaires window
      When Wait 5 seconds
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
      And Enter "admin" in "Last Name" field
      And Enter Email on Invite a user registration modal "admin"
      And Enter Confirmation Email on Invite a user registration modal "admin"
      And Enter Job title on secondary invite
      And Enter phone number "9490491534" in "Phone Number" field
      When Click "Invite" button
      When Click accept IBM registration checkbox
      And Click "Finish" button
      Then Wait for 10 seconds
      When Click "Skip" button
      And Switch to the active window
      Then Wait for 10 seconds
    #When Click on Do it later button
    #Basic info page
      When Click "Basic Information" tab
      Then Wait for 5 seconds
      And click on the calandar icon
      Then Wait for 5 seconds
      Then select date "1" from the date
      And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
      And Enter " testUAT" text in the discription text box
      And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
      And Scroll to view "Legal Business Name" field
      When Click "Upload Tax Registration Document" button
      Then Upload "PDF" under "Upload Document"
      When Click on the Confirm button.
      Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
      And Select "Privately Owned" value from Business type dropdown
      And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
      And Enter number "1435346645645645" in "Fax Number" in corporation details
      And Enter company email "dsgse@test.com" in email field
      And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
      When Click "No" radio under "Are you publicly traded on a stock exchange?"
      Then Enter the value "5" at Number of Full Time Employees on the Basic information page
      And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
      Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
      When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 10 seconds
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 10 seconds
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 15 seconds
      When Click on at "Next Step" button
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      And Select the "2002" year from the drop down
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on "Next Step" button
      And Click on the Add Ownership at Ownership tab
      Then Select the option Individual from the drop down
      And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
      And Enter the value "50" percentage at the Ownership Percentage
      When Click on the save new individual owner button on the modal
      When Click on Corporation Relations button
      And Click on Corporaion NO radio button
      When Wait 5 seconds
      When Click on the Save and Continue button
      And Click on Review and publish profile button in the review and Publish tab
      And Click on the publish button
      When Wait 5 seconds
      And Logout from the system
      Then Wait for 3 seconds
    #Onboard process
      Then Enter data in Email Address field
    #When Click on Continue button on Login page
      Then Enter data in Password field
      When Click on Sign In button on Login
      And Click on My Suppliers Tab
      When Click on the Search by supplier name and press Enter
      And Click "Go to details" button
    #Action center
      When Click on the Action Center
      And Scroll the page
      And Wait for 5 seconds
    #dropdowns
      And Select value "Global Logistics (GLP)" from "supplierCategory"
      And Wait for 5 seconds
      And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
      And Select text "EMEA" under "IBM Region" for Custom Fields
      And Select text "BENELUX" under "IBM Market" for Custom Fields
      When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
      And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
      When Click on "Save Changes" button under Custom Fields
      And Verify toast message "The custom field values are successfully saved." successfully is shown
      Then Wait for 10 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
      When Click on the "Rule without criteria" under Approval Source
      Then Click on the Approve button
    #Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click "Approve" button 1
      Then Navigate back to supplier
      Then Wait for 10 seconds
      And Refresh the current webpage
      Then verify the status as "Ready To Onboard"
      Then Wait for 5 seconds
      When Click on "Onboard Supplier" button on panel
      Then Switch to the active window
      And Enter notes in the onboard supplier modal
      When Click "Onboard" button
      And Verify the Status as Onboarded
      And Verify periodic revalidation date

    #delete configuration
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    And Click on "Delete" button for revalidation configuration
    And Click on "Submit" button
    Then Verify toast message "configuration deleted successfully" successfully is shown
    And Wait 5 seconds
    And Logout from the system
    
    @Smoke @Buyer @RevalidationConfiguration @TYSFunctionality @reg
  Scenario: As Buyer, I should be able to Revalidate the supplier after onboard status and see the status as Revalidation started from both buyer and supplier side and verify Cancel Revalidate button when configuration doesnot match
    
    #Configure Revalidation
      When Click "Suppliers" tab
      And Wait 5 seconds
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    And Click on "Create Periodic Revalidation" button
		Then Select "1" value from "year-list" label
    And Select "4" value from "month-list" label
    And Select "EMEA" value from "Supplier Tax Region" category
    And Select "United Kingdom" value from "Supplier Tax Country/Region" category
    And Select "NA" value from "Supplier Tax Region" category
    And Select "United States of America" value from "Supplier Tax Country/Region" category
    #Custom fields
    #dropdowns
    And Select "Global Logistics (GLP)" value from "Supplier Category" custom fields
    And Wait for 5 seconds
    And Select "Facility Site Services (FSS)" value from "Supplier Category (Commodity Family)" custom fields
    And Wait for 3 seconds
    And Select "EMEA" value from "IBM Region" custom fields
    And Select "BENELUX" value from "IBM Market" custom fields
    And Select "Albania (AL)" value from "IBM Country & ISO Code" custom fields
    And Select "Blocked Supplier" value from "Additional Supplier Label" custom fields
    When Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
      When Click "Suppliers" tab
      And Wait for 3 seconds
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
  	#invite without questionare
    When Click on the Click here on Questionnaire page
      Then Wait for 3 seconds
    And Click on the Clear All Link on Assign Questionnaires window
      Then Wait for 3 seconds
    And Click on Assign button on Assign Questionnaires window
      Then Wait for 3 seconds
    And Click on the Confirm on Confirmation Needed
      Then Wait for 3 seconds
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
      And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
   #When Click on the email with subject "Trust Your Supplier" from maildrop
      When Click on the email with subject "Trust Your Supplier" from maildrop
		And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
	  And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
		And Wait for 5 seconds
		#select dropdown
		And Scroll the page
		And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
     And Wait for 10 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory" 
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
    #Then Click on the Action Center
    #And Wait for 5 seconds
    When Click on the "Rule without criteria" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
      Then Click "Approve" button 1
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    And Verify periodic revalidation date
		#initiate Revalidation
		Then Click "Actions" button
		And Click on "Initiate Revalidation" div button
		And Enter the Notes under Initiate Revalidation note box
		And Click "Submit" button
		Then Wait for 5 seconds
		And Click on My Suppliers Tab
		And Show status "Revalidation Started" in Status "Revalidation Started" dropdown from buyer side
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Verify "Defer Revalidation" button is displayed under "Buyer side"
    And verify the status as "Revalidation Started"
    Then Wait for 3 seconds
    Then Logout from the system
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Revalidation Started"
    Then Logout from the system
    #delete configuration
    Given Open the login page
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    Then Click on "Delete" button for revalidation configuration
    And Click on "Submit" button
    Then Verify toast message "configuration deleted successfully" successfully is shown
    And Wait 10 seconds
    And Logout from the system
    
    @Smoke @Buyer @RevalidationConfiguration @TYSFunctionality @reg
  Scenario: As Buyer, I should be able to Revalidate the supplier after onboard status and see the status as Revalidation Review from both buyer and supplier side when configuration matches
    
    #Configure Revalidation
      When Click "Suppliers" tab
      And Wait 3 seconds
    When Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    And Click on "Create Periodic Revalidation" button
		Then Select "1" value from "year-list" label
    And Select "4" value from "month-list" label
    And Select "EMEA" value from "Supplier Tax Region" category
    And Select "United Kingdom" value from "Supplier Tax Country/Region" category
    And Select "NA" value from "Supplier Tax Region" category
    And Select "United States of America" value from "Supplier Tax Country/Region" category
    #Custom fields
    #dropdowns
    And Select "Global Logistics (GLP)" value from "Supplier Category" custom fields
    And Wait for 5 seconds
    And Select "Facility Site Services (FSS)" value from "Supplier Category (Commodity Family)" custom fields
    And Wait for 3 seconds
    And Select "EMEA" value from "IBM Region" custom fields
    And Select "BENELUX" value from "IBM Market" custom fields
    And Select "Albania (AL)" value from "IBM Country & ISO Code" custom fields
    And Select "Blocked Supplier" value from "Additional Supplier Label" custom fields
    When Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
      When Click "Suppliers" tab
      And Wait 3 seconds
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
  	#invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
      And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    #When Click on the email with subject "Trust Your Supplier" from maildrop
      When Click on the email with subject "Trust Your Supplier" from maildrop
		And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
	  And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
		And Wait for 5 seconds
		#select dropdown
		And Scroll the page
		And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    
    
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    And Scroll the page
    And Wait for 5 seconds
    
    #field visibility
    And Show "Supplier Category" label in "Custom Fields"
    And Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    And Show "IBM Region" label in "Custom Fields"
    And Show "IBM Market" label in "Custom Fields"
    And Show "IBM Country & ISO Code" label in "Custom Fields"
    And Show "Is this a PIF Supplier?" label in "Custom Fields"
    And Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    And Show "Spend Threshold" label in "Supplier Information"
    And Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    And Show "Save Changes" button is displayed for "Custom Fields" tab
    And Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory" 
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
      When Click on the "Rule without criteria" under Approval Source
      And Wait for 5 seconds
      When Click on the Approve button
    #Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click "Approve" button 1
      Then Wait for 3 seconds
      And Navigate back to supplier
      And Wait for 10 seconds
      When Click on "Onboard Supplier" button on panel
      Then Switch to the active window
      And Enter notes in the onboard supplier modal
      When Click "Onboard" button
      Then Wait for 5 seconds
      And Verify the Status as Onboarded
		#initiate Revalidation
		Then Click "Actions" button
		And Click on "Initiate Revalidation" div button
		And Enter the Notes under Initiate Revalidation note box
		And Click "Submit" button
		Then Wait for 5 seconds
		And Click on My Suppliers Tab
		And Show status "Revalidation Started" in Status "Revalidation Started" dropdown from buyer side
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Verify "Defer Revalidation" button is displayed under "Buyer side"
    And verify the status as "Revalidation Started"
    Then Wait for 3 seconds
    Then Logout from the system
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Revalidation Started"
    #Complete actions
    When Click on "IBM" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Action Complete" button
    Then Enter the Notes under notes for buyer Notes Box
    When Click "Confirm Action Complete" button  
		#Verify status
		Then Wait for 3 seconds
		When Click on My Buyers Nav link
    Then Verify IBM status is "Revalidation Review"
    Then Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    
    And Click on My Suppliers Tab
		And Show status "Revalidation Review" in Status "Revalidation Review" dropdown from buyer side
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Revalidation Review"
    
    #When Click on My Suppliers Tab
    #Then Click on the Search by supplier name and press Enter
    #When Click "Defer Revalidation" button
    #And Enter the Notes under Initiate Revalidation note box
    #And Click "Submit" button
    #Then Verify the Status as Onboarded
    #Then Wait for 5 seconds
    Then Logout from the system
    
     #delete configuration
    Given Open the login page
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    Then Click on "Delete" button for revalidation configuration
    And Click on "Submit" button
    Then Verify toast message "configuration deleted successfully" successfully is shown
    And Wait 10 seconds
    And Logout from the system