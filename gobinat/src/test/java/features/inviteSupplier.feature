Feature: Invite Supplier page

  #InviteSupplier
  Background: Login as a Buyer
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  #Then Click on "Suppliers" Down arrow on Dashboard
  @Regression @InviteSupplier @Buyer 
  Scenario: Verify invite suppliers section, description, Send Invite button visibility on Invite Suppliers window, search result description when no supplier found on the Invite Details page
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Verify the breadcrumb visibility on Invite supplier page
    #Then Verify the visibility of "Invite Supplier" heading
    Then Verify the visibility of "Invite Details" title
    Then Verify the visibility of "Invite Details" section
    Then Verify the visibility of "Custom Fields" section
    Then Verify the visibility of "Relationship Contacts" section
    Then Verify the visibility of "Pre-Invite Assessment" section
    Then Verify the visibility of "Assign Questionnaires" section
    Then Verify the visibility of "Preview" section
    Then Show "To invite a new supplier to connect with, enter their company name, the primary contact's email address, and their first name and last name." description on screen
    Then Show "Search" button in "Invite Details"
    Then Verify the "Search" button is "enabled"
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Show 'Your company might be already present on TYS, please review the match results below based on Company name, Legal name and Tax Country. If none of the suggestion matches, please click on "Ignore and Proceed" to proceed.' description below section
    Then Show "Business Name" column label "true"
    Then Show "Legal Name" column label "true"
    Then Verify search result description "No records found."
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Verify the "Cancel" button is "enabled"
    Then Verify the "Proceed with Selection" button is "disabled"
    Then Logout from the system

  @Sanity @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify upon clicking on Cancel button will close invite supplier screen and should navigate to the connected suppliers screen
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    And Click on Close button on Invite Supplier window
    Then Show the title "Connected Suppliers"
    And Logout from the system

  @Sanity @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify if the "Proceed with Selection" button will be enabled after user click on suggested supplier
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal "11 apr"
    And Click on the enter
    Then Click on any suggestions
    Then Verify the "Proceed with Selection" button is "enabled"
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify if both Back and Next buttons are visible on Invite Details screen
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Logout from the system

  @Sanity @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify if able to go back to the first step after clicking on the Back button on Invite Details screen
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    And Click on Back button
    Then Show "Search" button in "Invite Details"
    Then Show "To invite a new supplier to connect with, enter their company name, the primary contact's email address, and their first name and last name." description on screen
    Then Show 'Your company might be already present on TYS, please review the match results below based on Company name, Legal name and Tax Country. If none of the suggestion matches, please click on "Ignore and Proceed" to proceed.' description below section
    Then Show supplier name entered before on searchbox
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify labels visibilty and its tooltip on Invite Details screen
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Show "To invite a new supplier to connect with, enter their company name, the primary contact's email address, and their first name and last name." description on screen
    Then Show "Supplier Company Name" Label in "Invite Details"
    Then Show "Supplier Country of Registration" Label in "Invite Details"
    Then Show "Supplier Company Name" Label in "Invite Details"
    Then Show " First Name" Label in "Invite Details"
    Then Show " Last Name" Label in "Invite Details"
    Then Show " Email ID" Label in "Invite Details"
    Then Show "Confirm " Label in "Invite Details"
    Then Show " Preferred Language" Label in "Invite Details"
    Then Show "Contact Number (Optional)" Label in "Invite Details"
    Then Show "Supplier Company Name" tooltip "Name under which the Supplier company carries on it’s business. Also knows as DBA, Doing Business As. This field is mandatory." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Supplier Country of Registration" tooltip "The country/region in which the Supplier company is registered." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Contact's First Name" tooltip "The first name of the Supplier contact name. This field is mandatory. Max length: 35 characters." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Contact's Last Name" tooltip "The last name of the Supplier contact name. This field is mandatory. Max length: 35 characters." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Contact's Email ID" tooltip "The email address of the point of contact from Supplier company. This field is mandatory." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Confirm Contact's Email ID" tooltip "The email address of the point of contact from Supplier company. This field is mandatory." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Contact Number (Optional)" tooltip "The contact number of the Supplier contact. This field is optional." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Show "Contact's Preferred Language" tooltip "The preferred language in which you want to send the invite to the Supplier." in Assign a Contact modal
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Sanity @InviteSupplier @Buyer
  Scenario: Verify if able to see error messages on Invite Suppliers window after clicking on the Next button without input data
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Click on Next button on Invite Supplier window
    Then Show an error message at "Supplier Country of Registration" field "Required"
    Then Show an error message at "Contact's First Name" field "Required"
    Then Show an error message at "Contact's Last Name" field "Required"
    And Show an error message at "Contact's Email ID" field "Required"
    And Show an error message at "Confirm Contact's Email ID" field "Required"
    Then Logout from the system

  @Regression @Sanity @InviteSupplier @Buyer
  Scenario: Entered country and verifying error messages
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Click on Next button on Invite Supplier window
    Then Show an error message at "Contact's First Name" field "Required"
    Then Show an error message at "Contact's Last Name" field "Required"
    And Show an error message at "Contact's Email ID" field "Required"
    And Show an error message at "Confirm Contact's Email ID" field "Required"
    Then Logout from the system

  @Regression @Sanity @InviteSupplier @Buyer
  Scenario: Entered email id this is to check the remaining error fields
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Enter Contact Email Address on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Show an error message at "Supplier Country of Registration" field "Required"
    Then Show an error message at "Contact's First Name" field "Required"
    Then Show an error message at "Contact's Last Name" field "Required"
    And Show an error message when confirm mail id is not enetered "Confirm Contact's Email ID" field "Email addresses do not match."
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Entered confirm Email Id
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Show an error message at "Supplier Country of Registration" field "Required"
    Then Show an error message at "Contact's First Name" field "Required"
    Then Show an error message at "Contact's Last Name" field "Required"
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Entered first name and country name checking error messages
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Show an error message at "Contact's Last Name" field "Required"
    And Show an error message at "Contact's Email ID" field "Required"
    And Show an error message at "Confirm Contact's Email ID" field "Required"
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Entered first name, last name and checking error messages
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    And Show an error message at "Contact's Email ID" field "Required"
    And Show an error message at "Confirm Contact's Email ID" field "Required"
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify if panels, labels are visible, buttons are available on the Custom Fields screen
    Then Click "Connected Suppliers" tab
    #Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Verify the breadcrumb visibility on Invite supplier page
    Then Show "Custom Fields" panel
    Then Show "Buyer System Details (Optional)" panel
    Then Show "Specified Custom fields will apply to the supplier and are displayed on the Action Center. If you choose to skip this section, you can add this information in Connected Suppliers > Action Center, after the invite is sent." description on screen
    And Verify the visibility of labels "category" under the "custom fields" section
    And Verify label visibility of "supplierCategory" under the "category" section
    And Verify label visibility of "supplierCategory" dropdown under the "category" section
    And Verify the visibility of "Select All" labels on section Supplier Category and supplierInformation
    And Verify the visibility of "Clear All" labels on section Supplier Category and supplierInformation
    And Verify label visibility of "supplierCommodityFamily" under the "category" section
    #And Verify the visibility of "supplierCategory" dropdown section
    And Verify the visibility of labels "geo" under the "custom fields" section
    And Verify label visibility of "region" under the "geo" section
    Then Wait for 3 seconds
    And Verify label visibility of "market" under the "geo" section
    #And Verify the visibility of "market" dropdown section
    And Verify label visibility of "country" under the "geo" section
    #And Verify the visibility of "country" dropdown section
    And Verify the visibility of labels "pif" under the "custom fields" section
    And Verify label visibility of "pifSupplier" under the "pif" section
    #And Verify label visibility of "pifReValidationDate" section
    And Verify label visibility of "additionalSupplierLabel" under the "supplierInformation" section
    #And Verify the visibility of "additionalSupplierLabel" dropdown section
    And Verify label visibility of "onboardingStatus" under the "supplierInformation" section
    And Verify label visibility of "onboardingStatus" dropdown under the "supplierInformation" section
    And Verify label visibility of "spendThreshold" under the "supplierInformation" section
    And Verify label visibility of "spendThreshold" dropdown under the "supplierInformation" section
    And Verify label visibility of "supplierInFocusCountry" under the "supplierInformation" section
    And Verify the visibility of "Add More" button
    And Verify the visibility of labels "supplierInformation" under the "custom fields" section
    #And Verify the visibility of "ibm" dropdown section
    And Verify the visibility of Select All labels on section IBM categories
    And Verify the visibility of Clear All labels on section IBM categories
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Verify the "Skip" button is "enabled"
    Then Logout from the system

  @Regression @Sanity @InviteSupplier @Buyer
  Scenario: As a IBM buyer Verify if able to see error messages on the Custom Fields screen after clicking on the Next button without input data
    Then Click "Connected Suppliers" tab
    #Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button
    Then Show "Required" error message at "Supplier Category" field
    Then Show "Required" error message at "Supplier Category (Commodity Family)" field
    Then Show "Required" error message at "IBM Region" field
    Then Show "Required" error message at "IBM Market" field
    Then Show "Required" error message at "IBM Country & ISO Code" field
    Then Show "Required" error message at "Is this a PIF Supplier?" field
    Then Logout from the system

  @Regression @Sanity @InviteSupplier @Buyer
  Scenario: After clicking on the Back button on the Custom Fields screen, data entered before still is kept on the Invite Details screen
    Then Click "Connected Suppliers" tab
    #Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Save value of "Supplier Company Name" field
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Save "United States of America" value for "Supplier Country of Registration" field on page
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Save value of "Confirm Contact's Email ID" field
    Then Enter Contact First Name on Invite Supplier window
    Then Save value of "Contact's First Name" field
    Then Enter Contact Last Name on Invite Supplier window
    Then Save value of "Contact's Last Name" field
    Then Click on Next button on Invite Supplier window
    And Click on Back button
    Then Show "Supplier Company Name" value entered before
    Then Show "Supplier Country of Registration" value entered before
    Then Show "Contact's First Name" value entered before
    Then Show "Contact's Last Name" value entered before
    Then Show "Contact's Email ID" value entered before
    Then Show "Confirm Contact's Email ID" value entered before
    Then Logout from the system

  @Regression @Sanity @InviteSupplier @RelationshipContact @Buyer
  Scenario: After clicking on the Skip without entering data/entering all data required and clicking on the Next button, verify able to go to the Relationship Contact screen
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Show "Supplier Relationship Contacts (Optional)" panel
    Then Click on Back button
    Then Wait for 3 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Select "APAC" option in "IBM Region" dropdown
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Click "No" option for "Is this a PIF Supplier?" field
    Then Click on Next button
    Then Wait for 3 seconds
    Then Show "Supplier Relationship Contacts (Optional)" panel
    Then Logout from the system

  @Regression @InviteSupplier @RelationshipContact @Buyer
  Scenario: Verify if description, table, field, and buttons should be available on the Relationship Contact screen
    Then Click "Connected Suppliers" tab
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Show "Supplier Relationship Contacts (Optional)" panel
    Then Show "Other resources to be copied on this Invite (Optional)" optional field
    Then Show "This screen allows tagging of internal users against each relationship role on this supplier. This tagging will be specific to this supplier's relationship. Only TYS users can be added to the relationship contacts." description on screen
    Then Show "Relationship Manager Roles" column label "true"
    Then Show "Contacts" column label "true"
    Then Show "Copy on this invite (CC)" column label "true"
    Then Show "Other resources to be copied on this Invite (Optional)" tooltip "It is email id of people from your organization to whom you want to send copy of the invite. Format: example@google.com,sample@google.com. This field is optional." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Verify the "Skip" button is "enabled"
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: Role tagged as relationship manager role in Edit Permissions screen should be displayed in the Relationship Role column
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "ramauser11" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    #Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: Copy on this invite (CC) column should have a checkbox against each role
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "ramauser11" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Verify checkbox display corresponds to new role copied from "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    #Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: Update Contacts option should be available against each role
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "ramauser11" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Verify Update Contacts icon display corresponds to new role copied from "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    #Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @Buyer @QuickSanity 
  Scenario: Upon clicking update contact, a right drawer with option to select users for that role should be displayed
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "Internal Buyer Automation" role and tag as RMR "Yes"
    #Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on Users tab in Manage users page
    Then Wait for 3 seconds
    Then Click on Invite a New User button on Manage Users page
    Then Select "Internal Buyer Automation" in "Role" dropdown field
    Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
    #Then Select "ramauser11" in "Role" dropdown field
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Wait for 5 seconds
    Then Click on Update contacts icon on "Internal Buyer Automation" role
    Then Show role copy from "Internal Buyer Automation" role
    #Then Show the contact of "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click on Select All on the modal
    Then Verify the "Cancel" button is "enabled"
    Then Verify the "Save" button is "enabled"
    Then Click on "Save" button on "Update Contacts"
    #Then Click on Cancel button
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Delete "Pending" User has "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  #@Sanity @InviteSupplier @RelationshipContact @Buyer
  #Scenario: Verify if click on View All will show all contacts against the role
  #Then Click "Admin Actions" tab
  #Then Click "Manage Users" tab
  #Then Wait for 5 seconds
  #Then Click on Edit Permissions tab
  #Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
  #Then Wait for 3 seconds
  #Then Click on Users tab in Manage users page
  #Then Wait for 3 seconds
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
  #Then Wait for 5 seconds
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
  #Then Wait for 5 seconds
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
  # Then Wait for 5 seconds
  #Then Click on My Suppliers Tab
  #Then Click on Invite Supplier button on Connected Suppliers
  #Then Switch to the new window
  #When Click on the Supplier Company Name text box
  #Then Enter Supplier Company Name on Invite Supplier modal
  #And Click on the enter
  #Then Click on the IgnoreAndProceed button
  #Then Wait for 3 seconds
  #Then Select "United States of America" in "Supplier Country of Registration" dropdown
  #Then Enter Contact Email Address on Invite Supplier window
  #Then Enter Confirm Contact Email Address on Invite Supplier window
  #Then Enter Contact First Name on Invite Supplier window
  #Then Enter Contact Last Name on Invite Supplier window
  #Then Click on Next button on Invite Supplier window
  #Then Click on the Skip
  #Then Wait for 5 seconds
  #Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
  #Then Click on Update contacts icon on "Internal Buyer Automation" role
  #Then Wait for 5 seconds
  #Then Click on Select All on the modal
  #Then Click on "Save" button on "Update Contacts"
  #Then Wait for 3 seconds
  #Then Show "View All" option in the form of pill
  #Then Click on "View All" option in the form of pill
  #Then Wait for 3 seconds
  #Then Show all contacts has "Internal Buyer Automation" role
  #Then Click on Close icon on modal
  #Then Wait for 5 seconds
  #Then Click "Manage Users" tab
  #Then Wait for 5 seconds
  #Then Delete all "Pending" User has "Internal Buyer Automation" role
  #Then Wait for 5 seconds
  #Then Click on Edit Permissions tab
  #Then Delete new role copy from "Internal Buyer Automation"
  #Then Logout from the system
  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity @LG
  Scenario: Verify if clicking on checkbox option against the role should only be available post users are added for that role
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "Internal Buyer Automation" role and tag as RMR "Yes"
    #Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on Users tab in Manage users page
    Then Wait for 3 seconds
    Then Click on Invite a New User button on Manage Users page
    Then Select "Internal Buyer Automation" in "Role" dropdown field
    Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
    #Then Select "ramauser11" in "Role" dropdown field
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    #Then Click on the SkipUpon clicking update contact, a right drawer with option to select users for that role should be displayed
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
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Delete "Pending" User has "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    Then Wait for 2 seconds
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on View Message
    #Then Click on "JSON" tab mail
    Then Verify mail cc to contacts has "Internal Buyer Automation" role
    Then Close the tab
    Then Logout from the system

  #@Sanity @InviteSupplier @RelationshipContact @Buyer
  #Scenario: Verify if only active & pending status users in Manage Users screen and the ones that have the role for which Relationship Manager Role was selected and have access to that supplier based on their Teams config, should be displayed in the search & select dropdown list
  #Then Click "Admin Actions" tab
  #Then Click "Manage Users" tab
  #Then Wait for 5 seconds
  #Then Click on Edit Permissions tab
  #Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
  #Then Wait for 3 seconds
  #Then Click on Users tab in Manage users page
  #Then Wait for 3 seconds
  # create a user with Access Removed status
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Access Removed" User has "Internal Buyer Automation" role and "All Suppliers" team
  #Then Wait for 10 seconds
  #Then Click on Clear All
  #Then Wait for 5 seconds
  # create a user with Pending status
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
  #Then Wait for 10 seconds
  # create a user with Active status
  #Then Click on Invite a New User button on Manage Users page
  #Then Create "Active" User has "Internal Buyer Automation" role and "All Suppliers" team
  #Then Logout from the system
  #Then Close TYS tab
  #Then Wait for 10 seconds
  #Given Start the application
  #When Click on Sign In button
  #Then Close the hotjar window
  #Then Enter data in Email Address field
  #Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on My Suppliers Tab
  #Then Click on Invite Supplier button on Connected Suppliers
  #Then Switch to the new window
  #When Click on the Supplier Company Name text box
  #Then Enter Supplier Company Name on Invite Supplier modal
  #And Click on the enter
  #Then Click on the IgnoreAndProceed button
  #Then Wait for 3 seconds
  #Then Select "United States of America" in "Supplier Country of Registration" dropdown
  #Then Enter Contact Email Address on Invite Supplier window
  #Then Enter Confirm Contact Email Address on Invite Supplier window
  #Then Enter Contact First Name on Invite Supplier window
  #Then Enter Contact Last Name on Invite Supplier window
  #Then Click on Next button on Invite Supplier window
  #Then Click on the Skip
  #Then Wait for 5 seconds
  #Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
  #Then Click on Update contacts icon on "Internal Buyer Automation" role
  #Then Wait for 5 seconds
  #Then Show role copy from "Internal Buyer Automation" role
  #Then Show the contact of "Internal Buyer Automation" role
  #Then Verify the "Cancel" button is "enabled"
  #Then Verify the "Save" button is "enabled"
  #Then Click on Cancel button
  #Then Wait for 5 seconds
  #Then Click "Admin Actions" tab
  #Then Click "Manage Users" tab
  #Then Wait for 5 seconds
  #Then Delete "Pending" User has "Internal Buyer Automation" role
  #Then Wait for 10 seconds
  #Then Click on Clear All
  #Then Wait for 5 seconds
  #Then Delete "Active" User has "Internal Buyer Automation" role
  #Then Wait for 10 seconds
  #Then Click on Edit Permissions tab
  #Then Delete new role copy from "Internal Buyer Automation"
  #Then Wait for 2 seconds
  #Then Verify toast message "Deleted User role" successfully is shown
  #Then Logout from the system
  @Regression @InviteSupplier @RelationshipContact @Buyer
  Scenario: Verify if “ Other resources to be copied to this invite ” field should retain the functionality of email ID entry validation in the text field
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Enter "automation" value on "Other resources" field
    Then Click on Next button
    Then Show an error message at "Other resources" field "Invalid email address"
    Then Enter "automation@@" value on "Other resources" field
    Then Show an error message at "Other resources" field "Invalid email address"
    Then Enter "automation[(@mailinator.com" value on "Other resources" field
    Then Show an error message at "Other resources" field "Invalid email address"
    Then Enter "automation@mailina" value on "Other resources" field
    Then Show an error message at "Other resources" field "Invalid email address"
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: Verify if Email ID(s) mentioned in “Other resources to be copied to this invite” field should be tagged in the CC field on the supplier invite email
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Enter "automation@mailinator.com" value on "Other resources" field
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
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on View Message
    And Scroll Arrow Down the page
    #Then Click on "JSON" tab mail
    #Then Verify mail cc to Internal Resouces "Cc: automation@mailinator.com"
    Then Close the tab

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity @LG
  Scenario: Contacts should be displayed on that supplier’s profile > Action Center > Supplier Relationship Contact panel
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "Internal Buyer Automation" role and tag as RMR "Yes"
    #Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on Users tab in Manage users page
    Then Wait for 3 seconds
    Then Click on Invite a New User button on Manage Users page
    Then Select "Internal Buyer Automation" in "Role" dropdown field
    Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
    #Then Select "ramauser11" in "Role" dropdown field
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    #Verify Company page on registration
    #Vrify lables are displayed as expected
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    #verify compnay tab lables are displayed
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
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
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the active window
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
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: Verify if able to go to the Pre-Invite Assessment screen after clicking on the Skip or Next button on the Relationship Contacts screen
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Show "Pre Invite Assessment" panel
    Then Click on Back button
    Then Wait for 3 seconds
    Then Click on Next button
    Then Show "Pre Invite Assessment" panel
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify if Back, Skip, Next buttons are visible and enabled on the Pre-Invite Assessment screen
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Show "Pre Invite Assessment" panel
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Verify the "Skip" button is "enabled"
    Then Logout from the system

  @Smoke @InviteSupplier @RelationshipContact @Buyer @QuickSanity
  Scenario: After clicking on the Back button, data entered before still is kept on the Relationship Contacts screen
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new random role from "ramauser11" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Verify checkbox display corresponds to new role copied from "Internal Buyer Automation" role
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Show "Pre Invite Assessment" panel
    And Click on Back button
    Then Wait for 5 seconds
    Then Show "Supplier Relationship Contacts (Optional)" panel
    Then Show "Other resources to be copied on this Invite (Optional)" optional field
    Then Show "This screen allows tagging of internal users against each relationship role on this supplier. This tagging will be specific to this supplier's relationship. Only TYS users can be added to the relationship contacts." description on screen
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Supplier Relationship Contacts"
    Then Verify checkbox display corresponds to new role copied from "Internal Buyer Automation" role
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Verify the "Skip" button is "enabled"
    Then Wait for 5 seconds
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    #Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify if able to go to the Assign Questionnaires screen after clicking on the Skip/ Next button on the Pre-Invite Assessment screen
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
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
    Then Show "Assign Questionnaires" title
    And Click on Back button
    Then Wait for 3 seconds
    Then Click on Next button
    Then Show "Assign Questionnaires" title
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify the default group, buttons, Click here link are visible in Assign Questionnaires screen
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
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
    Then Show "These are your  recommended questionnaire groups based on the custom fields and pre-invite assessment that you have completed." description on screen
    Then Show "default" group in blue Questionnaire Groups bar
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    Then Show Click here on Assign Questionnaires screen
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: After clicking on the Back button on the Assign Questionnaires screen, data entered befored still is kept on Pre-Invite Assessment
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "Gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
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
    Then Wait for 3 seconds
    And Click on Back button
    Then Show "Pre Invite Assessment" panel
    Then Verify option selected before is kept on "Is the forecasted spend (project and manual) higher than 200K EUR?" field
    Then Verify option selected before is kept on "Badge" dropdown field
    Then Verify option selected before is kept on "D&B Rating" dropdown field
    Then Verify value entered before is kept on "Username" input field
    Then Verify value entered before is kept on "Bank Key" input field
    Then Verify value entered before is kept on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Verify value entered before is kept on "target date" datepicker field
    Then Verify value entered before is kept on "Please select the type of services from the list." search field
    Then Verify value entered before is kept on "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Verify the "Next" button is "enabled"
    Then Verify the "Back" button is "enabled"
    #Then Verify the "Skip" button is "enabled"
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify the Questionnaire is available in the group table
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign new questionnaire to "default" QG
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Show "default" QG and Questionnaire of that QG in the group table
    Then Wait for 3 seconds
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Remove questionnaire just added in "default" group
    Then Wait for 3 seconds
    Then Click on Update button on Manage Questionnaires
    Then Switch to the new window
    Then Click on Update button confirm
    Then Verify toast message "Default questionnaires saved." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify if able to see the rest groups of the questionnaire after clicking on the small number as a pill
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign questionnaire to "Automation" QG and "default" QG
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
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
    Then Show "default" QG and Questionnaire of that QG in the group table
    Then Click on small number beside questionnaire of "default" QG
    Then Show "Automation" field on tooltip when hover on small number
    Then Wait for 3 seconds
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Remove questionnaire just added in "default" group
    Then Wait for 3 seconds
    Then Click on Update button on Manage Questionnaires
    Then Switch to the new window
    Then Click on Update button confirm
    Then Verify toast message "Default questionnaires saved." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify if the Questionnaire Group is updated after assigning new Questionnaire/Questionnaire Group
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Wait for 3 seconds
    Then Show "Automation" group in blue Questionnaire Groups bar
    Then Show "Diversity" questionnaire in the group table
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify if able to go the Preview screen after clicking on the Next button on the Assign Questionnaires screen
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
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
    Then Click on Next button
    Then Show "Preview" panel
    Then Verify the "Back" button is "enabled"
    Then Verify the "Send Invite" button is "enabled"
    Then Logout from the system

  @Regression @InviteSupplier @Buyer
  Scenario: Verify if the information on all steps before is visible on the Preview screen
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Save value of "Company Name" field
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Save "United States of America" value for "Supplier Country of Registration" field on page
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Save value of "Contact's First Name" field
    Then Enter Contact Last Name on Invite Supplier window
    Then Save value of "Contact's Last Name" field
    Then Enter "355 4563458" value in Contact Number field
    Then Save "355 4563458" value for "Contact Number" field on page
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "GLP" value for "Supplier Category" field on page
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select "APAC" option in "IBM Region" dropdown
    Then Save "APAC" value for "IBM Region" field on page
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Save "ASEAN" value for "IBM Market" field on page
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Click "No" option for "Is this a PIF Supplier?" field
    Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select "Blocked Supplier" option in "Additional Supplier Label" dropdown
    Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Select "0 - 50,000 USD" in "Spend Threshold" dropdown
    Then Save "0" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" in "System Name" dropdown
    Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    Then Save value of "System ID" field
    Then Click on Next button
    Then Wait for 5 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "Gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
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
    Then Click on Next button
    Then Preview value entered on "Company Name" field has "p" tag
    Then Preview value entered on "Supplier Country of Registration" field has "p" tag
    #    Then Preview value entered on "Contact's Preferred Language" field has "p" tag
    #    Then Preview value entered on "Internal Resource Email" field has "p" tag
    Then Preview value entered on "Contact's First Name" field has "p" tag
    Then Preview value entered on "Contact's Last Name" field has "p" tag
    Then Preview value entered on "Contact's Email ID" field has "p" tag
    Then Preview value entered on "Supplier Category" field has "select no p" tag
    Then Preview value entered on "Supplier Category (Commodity Family)" field has "select" tag
    Then Preview value entered on "IBM Region" field has "select" tag
    Then Preview value entered on "IBM Market" field has "select" tag
    Then Preview value entered on "IBM Country & ISO Code" field has "select" tag
    Then Preview value entered on "Is this a PIF Supplier?" field has "span" tag
    Then Preview value entered on "Additional Supplier Label" field has "select" tag
    Then Preview value entered on "Spend Threshold" field has "select no p" tag
    Then Preview value entered on "Is supplier located in a focus country (excluding Italy and Greece)?" field has "span" tag
    Then Preview value entered on "System Name" field has "p" tag
    Then Preview value entered on "System ID" field has "p" tag
    Then Preview value entered on "Is the forecasted spend (project and manual) higher than 200K EUR?" field has "div no time" tag
    Then Preview value entered on "Badge" field has "div no time" tag
    Then Preview value entered on "D&B Rating" field has "div no time" tag
    Then Preview value entered on "Username" field has "div no time" tag
    Then Preview value entered on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field has "div no time" tag
    Then Preview value entered on "Bank Key" field has "div no time" tag
    Then Preview value entered on "For the BT Consumers, what categories of personal data are being processed?" field has "div no time" tag
    Then Preview value entered on "Please select the type of services from the list." field has "div no time" tag
    Then Preview value entered on "target date" field has "div" tag
    Then Preview value entered on "default QG" field has "p" tag
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: After clicking on the Back button on the Preview screen, data entered before still is kept on Assign Questionnaires screen
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign new questionnaire to "Automation" QG
    #Then Click on the Confirm on Confirmation Needed
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Australia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Wait for 3 seconds
    Then Click on Next button
    And Click on Back button
    Then Show "Automation" QG and Questionnaire of that QG in the group table
    Then Wait for 3 seconds
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Remove questionnaire just added in "Automation" group
    Then Wait for 3 seconds
    Then Click on Update button on Manage Questionnaires
    Then Switch to the new window
    Then Click on Update button confirm
    Then Verify toast message "Default questionnaires saved." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity @TYSFunctionality
  Scenario: Verify a new supplier is available on the Connected Suppliers page after sending an invite successfully
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
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    #Then Show the supplier in discover searchbox
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify invite a supplier without questionnaire/questionnaire group, custom fields, Supplier Relationship Contacts, Pre Invite Assessment
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
    Then Enter "355 4563458" value in Contact Number field
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
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 3 seconds
    Then Show "You have not assigned any questionnaires. Click the assign questionnaires button to assign some." text no assigned
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify invite a supplier with questionnaire/questionnaire group , without custom fields, Supplier Relationship Contacts, Pre Invite Assessment
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign new questionnaire to "Automation" QG
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
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    Then Click "Questionnaire Name" tab on modal
    Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 3 seconds
    Then Show "Diversity" questionnaire in supplier profile
    #Then Show questionnaire of "Automation" QG in supplier profile
    #Then Show "Automation" QG in supplier profile
    Then Wait for 3 seconds
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Remove questionnaire just added in "Automation" group
    Then Wait for 3 seconds
    Then Click on Update button on Manage Questionnaires
    Then Switch to the new window
    Then Click on Update button confirm
    Then Verify toast message "Default questionnaires saved." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify invite a supplier with custom fields, without questionnaire/questionnaire group, Supplier Relationship Contacts, Pre Invite Assessment
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Save value of "Company Name" field
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    #    Then Enter "automation@mailinator.com" value on "Internal Resource(s) to be Copied on this Invite (Optional)" field
    #    Then Save "automation@mailinator.com" value for "Internal Resource" field on page
    Then Click on Next button on Invite Supplier window
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "GLP" value for "Supplier Category" field on page
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select "APAC" option in "IBM Region" dropdown
    Then Save "APAC" value for "IBM Region" field on page
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Save "ASEAN" value for "IBM Market" field on page
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Click "No" option for "Is this a PIF Supplier?" field
    Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select "Blocked Supplier" option in "Additional Supplier Label" dropdown
    Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Select "0 - 50,000 USD" in "Spend Threshold" dropdown
    Then Save "0" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" in "System Name" dropdown
    Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    Then Save value of "System ID" field
    Then Click on Next button
    Then Wait for 5 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Preview value entered on "Supplier Category" field has "select no p" tag
    Then Preview value entered on "Supplier Category (Commodity Family)" field has "select" tag
    Then Preview value entered on "IBM Region" field has "select" tag
    Then Preview value entered on "IBM Market" field has "select" tag
    Then Preview value entered on "IBM Country & ISO Code" field has "select" tag
    Then Preview value entered on "Is this a PIF Supplier?" field has "span" tag
    Then Preview value entered on "Additional Supplier Label" field has "select" tag
    Then Preview value entered on "Spend Threshold" field has "select no p" tag
    Then Preview value entered on "Is supplier located in a focus country (excluding Italy and Greece)?" field has "span" tag
    Then Preview value entered on "System Name" field has "p" tag
    Then Preview value entered on "System ID" field has "p" tag
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 3 seconds
    Then Click on the Action Center
    Then Wait for 5 seconds
    Then Verify option selected before is kept on "Supplier Category" dropdown field
    Then Verify option selected before is kept on "Spend Threshold" dropdown field
    Then Verify value entered is shown on "Supplier Category (Commodity Family)" field
    Then Verify value entered is shown on "IBM Region" field
    Then Verify value entered is shown on "IBM Market" field
    Then Verify value entered is shown on "IBM Country & ISO Code" field
    Then Verify value entered is shown on "Additional Supplier Label" field
    Then Verify value entered is shown on "Is this a PIF Supplier?" radio field
    Then Verify value entered is shown on "Is supplier located in a focus country (excluding Italy and Greece)?" radio field
    Then Preview value entered on "System Name" field has "select no p" tag
    Then Verify value entered is shown on "System ID" input field
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Regression @InviteSupplier @Buyer
  Scenario: Verify invite a supplier without custom fields,  without questionnaire/questionnaire group, Supplier Relationship Contacts, Pre Invite Assessment
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
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
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
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Regresson @Sanity @InviteSupplier @Buyer
  Scenario: Verify invite a supplier without Pre-Invite Assessment
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
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
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
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer
  Scenario: Verify invite a supplier with custom fields, with pre-invite assessment, without questionnaires
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
    Then Save "United States of America" value for "Supplier Country of Registration" field on page
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "GLP" value for "Supplier Category" field on page
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select "APAC" option in "IBM Region" dropdown
    Then Save "APAC" value for "IBM Region" field on page
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Save "ASEAN" value for "IBM Market" field on page
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Click "No" option for "Is this a PIF Supplier?" field
    Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select "Blocked Supplier" option in "Additional Supplier Label" dropdown
    Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Select "0 - 50,000 USD" in "Spend Threshold" dropdown
    Then Save "0" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" in "System Name" dropdown
    Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    Then Save value of "System ID" field
    Then Click on Next button
    Then Wait for 5 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
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
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait for 3 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 3 seconds
    Then Click on the Action Center
    Then Wait for 5 seconds
    Then Verify option selected before is kept on "Supplier Category" dropdown field
    Then Verify option selected before is kept on "Spend Threshold" dropdown field
    Then Verify value entered is shown on "Supplier Category (Commodity Family)" field
    Then Verify value entered is shown on "IBM Region" field
    Then Verify value entered is shown on "IBM Market" field
    Then Verify value entered is shown on "IBM Country & ISO Code" field
    Then Verify value entered is shown on "Additional Supplier Label" field
    Then Verify value entered is shown on "Is this a PIF Supplier?" radio field
    Then Verify value entered is shown on "Is supplier located in a focus country (excluding Italy and Greece)?" radio field
    Then Click on "Pre Invite Assessment" Questionnaire on tab
    Then Verify show value enterd before on "Is the forecasted spend (project and manual) higher than 200K EUR?" field
    Then Verify show value enterd before on "Badge" field
    Then Verify show value enterd before on "D&B Rating" field
    Then Verify show value enterd before on "Username" field
    Then Verify show value enterd before on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field
    Then Verify show value enterd before on "Bank Key" field
    #Then Verify show value enterd before on "For the BT Consumers, what categories of personal data are being processed?" field
    Then Verify show value enterd before on "Please select the type of services from the list." field
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify invite a supplier without custom fields, with pre-invite assessment, without questionnaires
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
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "Gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
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
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Preview value entered on "Is the forecasted spend (project and manual) higher than 200K EUR?" field has "div no time" tag
    Then Preview value entered on "Badge" field has "div no time" tag
    Then Preview value entered on "D&B Rating" field has "div no time" tag
    Then Preview value entered on "Username" field has "div no time" tag
    Then Preview value entered on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field has "div no time" tag
    Then Preview value entered on "Bank Key" field has "div no time" tag
    Then Preview value entered on "For the BT Consumers, what categories of personal data are being processed?" field has "div no time" tag
    Then Preview value entered on "Please select the type of services from the list." field has "div no time" tag
    Then Preview value entered on "target date" field has "div" tag
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the supplier in connected searchbox
    Then Wait for 3 seconds
    Then Click on the Action Center
    Then Wait for 5 seconds
    Then Click on "Pre Invite Assessment" Questionnaire on tab
    Then Verify show value enterd before on "Is the forecasted spend (project and manual) higher than 200K EUR?" field
    Then Verify show value enterd before on "Badge" field
    Then Verify show value enterd before on "D&B Rating" field
    Then Verify show value enterd before on "Username" field
    Then Verify show value enterd before on "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field
    Then Verify show value enterd before on "Bank Key" field
    #Then Verify show value enterd before on "For the BT Consumers, what categories of personal data are being processed?" field
    Then Verify show value enterd before on "Please select the type of services from the list." field
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab

  @Smoke @InviteSupplier @Buyer @SanityChec
  Scenario: Verify invite a supplier with custom fields, with questionnaire/questionnaire group, with Supplier Relationship Contacts, Pre Invite Assessment
    #relationship invite
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Wait for 3 seconds
    Then Create new random role from "ramauser11" role and tag as RMR "Yes"
    Then Wait for 5 seconds
    #invite
    Then Click "Suppliers" tab
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    #Then Save name of new supplier
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    #Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    #Then Save "GLP" value for "Supplier Category" field on page
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Wait for 3 seconds
    #Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Wait for 3 seconds
    Then Select "APAC" option in "IBM Region" dropdown
    Then Wait for 3 seconds
    #Then Save "APAC" value for "IBM Region" field on page
    Then Wait for 3 seconds
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Wait for 3 seconds
    #Then Save "ASEAN" value for "IBM Market" field on page
    Then Wait for 3 seconds
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Wait for 3 seconds
    #Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Wait for 3 seconds
    Then Save "ASEAN" value for "IBM Market" field on page
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    #Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    #Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    #And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click "No" option for "Is this a PIF Supplier?" field
    #Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select "Blocked Supplier" option in "Additional Supplier Label" dropdown
    Then Wait for 3 seconds
    #Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Wait for 3 seconds
    Then Select "0 - 50,000 USD" in "Spend Threshold" dropdown
    Then Wait for 3 seconds
    #Then Save "0" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    #Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" in "System Name" dropdown
    #Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    #Then Save value of "System ID" field
    Then Click on Next button
    #relationship screen
    Then Click on checkbox on "ramauser11" role
    Then Click on Next button
    Then Wait for 3 seconds
    Then Click on the Skip
    #questionnaire
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
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    #Then Wait for 2 seconds
    Then Click "Delete" button
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system

  @Smoke @InviteSupplier @Buyer @QuickSanity
  Scenario: Verify invite a supplier by skipping all screens
    Then Click on Invite Suppliers on dashboard page
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
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
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
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Close the tab
