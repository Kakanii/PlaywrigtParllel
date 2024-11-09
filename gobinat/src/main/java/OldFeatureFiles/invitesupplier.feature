Feature: Invite Supplier page
#InviteSupplier

  Background: Login as a Buyer
    Given Start the application
    When Click on Sign In button
    #Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window


   
    @Smoke @InviteSupplier @Buyer
  Scenario: Buyer invite a supplier
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier modal
    Then Enter Confirm Contact Email Address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window "Test"
    Then Enter Contact Last Name on Invite Supplier window "Last"
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    #Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Click on the Send Invite button on Invite Supplier window 
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify email received in supplier inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify email received in supplier inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"

  @Smoke @InviteSupplier @Buyer @InviteSupplierPreview 
    Scenario: verify Supplier Preview when Buyer invite a supplier without questionnaires
    Then Enter Supplier Company Name on Invite Supplier modal "Flemingo INC"
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier modal "flamingoheights@mailinator.com"
    Then Enter Confirm Contact Email Address on Invite Supplier modal "flamingoheights@mailinator.com"
    Then Enter Contact First Name on Invite Supplier window "Flemingo"
    Then Enter Contact Last Name on Invite Supplier window "Heights"
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Show "Company Name" as "Flemingo INC" in InviteSupplierPreview
    Then Show "Supplier Country of Registration" as "United States of America" in InviteSupplierPreview
    Then Show "Contact's Preferred Language" as "English" in InviteSupplierPreview
    Then Show "Contact's First Name" as "Flemingo" in InviteSupplierPreview
    Then Show "Contact's Last Name" as "Heights" in InviteSupplierPreview
    Then Click on Close button on Invite Supplier window
    Then Logout from the system

    @Smoke @InviteSupplier @Buyer @InviteSupplierPreview
    Scenario: verify Supplier Preview when Buyer invite a supplier with questionnaires
    Then Enter Supplier Company Name on Invite Supplier modal "Venus Builders"
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier modal "venus@mailinator.com"
    Then Enter Confirm Contact Email Address on Invite Supplier modal "venus@mailinator.com"
    Then Enter Contact First Name on Invite Supplier window "Venus"
    Then Enter Contact Last Name on Invite Supplier window "Builders"
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Show "Company Name" as "Venus Builders" in InviteSupplierPreview
    Then Show "Supplier Country of Registration" as "United States of America" in InviteSupplierPreview
    Then Show "Contact's Preferred Language" as "English" in InviteSupplierPreview
    Then Show "Contact's First Name" as "Venus" in InviteSupplierPreview
    Then Show "Contact's Last Name" as "Builders" in InviteSupplierPreview
    Then Show "Questionnaires" as "Trade Compliance" in InviteSupplierPreview
    Then Show "Questionnaires" as "Import Export Compliance - IBM" in InviteSupplierPreview
    Then Show "Questionnaires" as "Company Operations" in InviteSupplierPreview
    Then Click on Close button on Invite Supplier window
    Then Logout from the system


#SRM Name, SRM Email Validation

    # @Smoke @InviteSupplier @Buyer @InviteSupplierPreview @SRM
    # Scenario: Validate  SRM Name and SRM Email fields on Invite Supplier
    # Then Show "SRM Name" Label in InviteSupplierPreview
    # Then Show "SRM Name" tooltip "The relationship manager from the Buyer organization." under "Invite Supplier" window
    # Then Show "SRM Email Address" Label in InviteSupplierPreview
    # Then Show "SRM Email Address" tooltip "The email id of the relationship manager from the Buyer organization." under "Invite Supplier" window
    # Then Click on Next button on Invite Supplier window
    # Then Verify no error message is displayed under "SRM Name" field
    # Then Verify no error message is displayed under "SRM Email Address" field
    # Then Enter "James" under SRM Name field in invite supplier window
    # Then Click on Next button on Invite Supplier window
    # Then Show an error message at SRM Email Address field "Required"
    # Then Click on Close button on Invite Supplier window
    # Then Logout from the system

  #@Regression @BuyerInviteProcess @DeclineInvitation @InviteSupplier @Buyer
  Scenario: Verify DeclineInvitation Email Notification in Buyer Invite Process Category
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify Email received in "USA" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
    Then Switch to the active window
    Then Click on Declined
    Then Switch to the new opened tab
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Close TYS tab
    Then Verify Email received in "myautobuyer@mailinator.com" Buyer Inbox with subject "has declined your invitation"
    Then Click on the email with subject "has declined your invitation"

  @Regression @InviteSupplier @Buyer
   Scenario: Buyer invite a supplier, should able to add questionnaires from Manage Questionnaires page during the invite process
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Switch to the active window
    Then Select Yes for the assigning different questionnaires
    Then Deselect all QGs from the Questinnaire Group
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on next button on invite supplier questionaire page
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system

  #@Regression @InviteSupplier @Buyer
   Scenario: Buyer invite a supplier, should able to add and remove questionnaires from Manage Questionnaires page during the invite process
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Switch to the active window
    Then Select Yes for the assigning different questionnaires
    Then Deselect all QGs from the Questinnaire Group
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on "Remove" at the "Energy,Recycling and Waste Management" questionaire
    Then Click on "Remove" at the "European Environmental Compliance" questionaire
    Then Click on "Remove" at the "State and SEZ GST Information (India)" questionaire
    Then Click on "Remove" at the "MSME Certification (India)" questionaire
    Then Click on "Remove" at the "Anti-Bribery, Anti-Corruption" questionaire
    Then Click on "Remove" at the "Canada Business and Tax Registration" questionaire
    Then Click on "Remove" at the "Conflict Minerals" questionaire
    Then Click on "Remove" at the "Diversity - United States of America" questionaire
    Then Click on "Remove" at the "Diversity" questionaire
    Then Click on "Remove" at the "Environment and Safety - IBM" questionaire
    Then Click on "Remove" at the "Ethics and Compliance" questionaire
    Then Click on "Remove" at the "France VAT Registration" questionaire
    Then Click on "Remove" at the "GDPR - General Data Protection Regulation" questionaire
    Then Click on next button on invite supplier questionaire page
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system