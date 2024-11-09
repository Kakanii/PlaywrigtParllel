Feature: Link Request

  #Link Request
  Background: Start the Application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with out Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify inviter supplier with status
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "GLP" value for "Supplier Category" field on page
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Save "EMEA" value for "IBM Region" field on page
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Save "BENELUX" value for "IBM Market" field on page
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Save "0 - 50,000 USD" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    Then Save value of "System ID" field
    Then Click on Next button
    #Relationship Contacts
    Then Wait for 5 seconds
    Then Click on checkbox on "Supplier Relationship Manager" role
    Then Click on Next button
    #Pre-Invite Assessment
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "Gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    #Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    #Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "03/31/2030" on "target date" field
    Then Save "03/31/2030" value for "target date" field on page
    Then Click on Next button
    #Assign Questionnaire
    Then Wait for 3 seconds
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    #Preview Custom fields
    Then Wait 2 seconds
    Then Preview value entered on "Supplier Category" field has "select no p" tag
    Then Preview value entered on "Supplier Category (Commodity Family)" field has "select" tag
    Then Preview value entered on "IBM Region" field has "select" tag
    Then Preview value entered on "IBM Market" field has "select" tag
    Then Preview value entered on "IBM Country & ISO Code" field has "select" tag
    Then Preview value entered on "Is this a PIF Supplier?" field has "span" tag
    Then Preview value entered on "Additional Supplier Label" field has "select" tag
    #Pre-Invite Assessment
    Then Preview value entered on "Is the forecasted spend (project and manual) higher than 200K EUR?" field has "div no time" tag
    Then Preview value entered on "Badge" field has "div no time" tag
    Then Preview value entered on "D&B Rating" field has "div no time" tag
    Then Preview value entered on "Username" field has "div no time" tag
    #Then Preview value entered on "Please justify why Buyer Internal Assessment is not completed." field has "div no time" tag
    Then Preview value entered on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field has "div no time" tag
    Then Preview value entered on "Bank Key" field has "div no time" tag
    Then Preview value entered on "For the BT Consumers, what categories of personal data are being processed?" field has "div no time" tag
    Then Preview value entered on "Please select the type of services from the list." field has "div no time" tag
    Then Preview value entered on "target date" field has "div" tag
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,and without Relationship Contact,Pre-Invite Assement,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "GLP" value for "Supplier Category" field on page
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Save "EMEA" value for "IBM Region" field on page
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Save "BENELUX" value for "IBM Market" field on page
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Save "0 - 50,000 USD" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    Then Save value of "System ID" field
    Then Click on Next button
    #With out Relationship Contact,Pre-Invite Assement
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Relationship Contact and without Custom fields,Pre-Invite Assement,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Relationship Contact
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    #Relationship Contacts
    Then Wait for 5 seconds
    Then Click on checkbox on "Supplier Relationship Manager" role
    Then Click on Next button
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Pre-Invite Assement and without Custom fields,Relationship Contact,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    #Pre-Invite Assessment
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "Gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    #Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    #Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "03/31/2030" on "target date" field
    Then Save "03/31/2030" value for "target date" field on page
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"

    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Assign Questionnaire and with out Custom fields,Relationship Contact,Pre-Invite Assement using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With out Custom fields,Relationship Contact,Pre-Invite Assement
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #With Assign Questionnaire
    Then Wait for 3 seconds
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,Relationship Contact,and with out Pre-Invite Assement,Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    #Relationship Contacts
    Then Wait for 5 seconds
    Then Click on checkbox on "Supplier Relationship Manager" role
    Then Click on Next button
    #With out Pre-Invite Assessment
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Pre-Invite Assement,Assign Questionnaire and without Custom fields,Relationship Contact using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    #Pre-Invite Assessment
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Select "gold" in "Badge" dropdown
    Then Select "1" in "D&B Rating" dropdown
    Then Enter "autotest" value in "Username" input field
    #Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Enter "6666666" value in "Bank Key" input field
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Select "03/31/2030" on "target date" field
    Then Click on Next button
    #Assign Questionnaire
    Then Wait for 3 seconds
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @Regression @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,Pre-Invite Assement,and with out Relationship Contact,Assign Questionnaire using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    #With out Relationship Contacts
    Then Click on the Skip
    Then Wait for 3 seconds
    #Pre-Invite Assessment
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Select "gold" in "Badge" dropdown
    Then Select "1" in "D&B Rating" dropdown
    Then Enter "autotest" value in "Username" input field
    #Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Enter "6666666" value in "Bank Key" input field
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Select "03/31/2030" on "target date" field
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @Regression @LinkRequestt
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,Assign Questionnaire,and with out Relationship Contact,Pre-Invite Assement using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    #With out Relationship Contacts
    Then Wait for 3 seconds
    Then Click on the Skip
    #With out Pre-Invite Assessment
    Then Wait for 3 seconds
    Then Click on the Skip
    #Assign Questionnaire
    Then Wait for 3 seconds
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @Smoke @LinkRequest @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify As Buyer , I want to send an invite to supplier with Custom fields,Pre-Invite Assement,Relationship Contact and with out Assign Questionnaire using Link Request
    When Enter EmailAdress in Email Address field "myautonokiabuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 5 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    #Custom Fields
    #Then Scroll to the top of the page
    Then Wait for 5 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    #Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    #Then Enter value for "System ID" field
    Then Click on Next button
    #Relationship Contacts
    Then Wait for 5 seconds
    Then Click on checkbox on "Supplier Relationship Manager" role
    Then Click on Next button
    #Pre-Invite Assessment
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Select "gold" in "Badge" dropdown
    Then Select "1" in "D&B Rating" dropdown
    Then Enter "autotest" value in "Username" input field
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Enter "6666666" value in "Bank Key" input field
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Select "03/31/2030" on "target date" field
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds

  @Smoke @LinkRequest @TYSFunctionality
  Scenario: Verify As Buyer , I want to send an invite to supplier with Assign Questionnaire and with out Custom fields,Pre-Invite Assement,Relationship Contact using Link Request
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    #With Basic details
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Without Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement"
    Then Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    #When Click on the email with subject "Unlock new sales opportunities with Nokia B2B Commerce for Procurement" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #verify invite supplier with status
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    #Search the supplier on Discoverable supplier page
    When Click on Discover tab
    Then Wait for 30 seconds
    #When Click on "TYS Discover" tab for "TYS Discover"
    Then Search the supplier name in discover searchbox
    And Show the supplier in discover searchbox
    When Click on the same Supplier from other buyer
    Then Click "Connect with this Supplier" button
    Then Wait for 5 seconds
    ##With out Custom fields,Relationship Contact,Pre-Invite Assement
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #With Assign Questionnaire
    Then Wait for 3 seconds
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    #Send invite
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "wants to connect with you on Trust Your Supplier"
    #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
    Then Wait for 5 seconds

  @ScrollbyElement @LinkRequest
  Scenario: Verify As Buyer , I want to send an invite to supplier with out Custom fields,Relationship Contact,Pre-Invite Assement,and Assign Questionnaire using Link Request
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Click "Suppliers" tab
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Click "Admin Actions" tab
    Then Wait for 5 seconds
    Then Click "Password Configuration" tab
    #Then Scroll to "Password Configuration" bar

    Then Logout from the system