Feature: SRM 3

  Background: Login as Buyer
    Given Open the login page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login


  @Regression @Buyer @SRM3 @SLYN-29111
  Scenario: Verify As a Buyer, I should see Supplier Request as 1st option in left menu under "Suppliers"
    # And  Click "Suppliers" tab
    When Wait 10 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29111
  Scenario: Verify if buyer able to see “Initiate Supplier Request” button on Supplier Request screen
    # And Click "Suppliers" tab
    When Wait 10 seconds
    And Click "Supplier Requests" tab
    When Wait 10 seconds
    Then Verify the "Initiate Supplier Request" button
    Then Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29111
  Scenario: Verify if buyer able to see Supplier Request on left menu when user has permissions on Supplier Request security module
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "User Admin" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequest" security module
    Then Click on "read:all" permission under "SupplierRequest" security module
    Then Click on "update:mine" permission under "SupplierRequest" security module
    Then Click on "update:all" permission under "SupplierRequest" security module
    Then Click on "complete:mine" permission under "SupplierRequest" security module
    Then Click on "complete:all" permission under "SupplierRequest" security module
    Then Wait for 3 seconds
    Then Verify "create" permission is selected under "SupplierRequest" security module
    Then Verify "read:all" permission is selected under "SupplierRequest" security module
    Then Verify "update:mine" permission is selected under "SupplierRequest" security module
    Then Verify "update:all" permission is selected under "SupplierRequest" security module
    Then Verify "complete:mine" permission is selected under "SupplierRequest" security module
    Then Verify "complete:all" permission is selected under "SupplierRequest" security module
    Then Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29111 @SRMSanityCheck
  Scenario: Verify if buyer able to see Supplier Request on left menu when user has permissions of create on Supplier Request security module
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequest" security module
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    # Login with User Admin user
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequest" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29111
  Scenario: Verify if buyer able to see Supplier Request on left menu when user has permissions of Update all on Supplier Request security module
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:all" permission under "SupplierRequest" security module
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    # Login with User Admin user
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:all" permission under "SupplierRequest" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29111
  Scenario: Verify if buyer able to see Supplier Request on left menu when user has permissions of read all on Supplier Request security module
    Then Click on "Admin Actions" Down arrow on Dashboard
    And  Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:all" permission under "SupplierRequest" security module
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    # Login with User Admin user
    Then Enter "InternalBuyer" buyer email in Email Address
    And  Enter data in Password field
    And  Click on Sign In button on Login
    And  Wait for 5 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And  Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:all" permission under "SupplierRequest" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see “Lookup your supplier in TYS” screen when clicked on Initiate Supplier request buttton on Supplier request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Look up your supplier in TYS" page
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to search for Supplier company name on “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the "Request a New Supplier" button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if the buyer able to see the Tax Country dropdown as a mandatory  field with all the countries
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And  Click on "Search" button
    Then Verify the "Required" text as under Country dropdown
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see Cancel button on “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Verify the "Cancel" button
    And  Click on "Cancel" button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN7
  Scenario: Verify if buyer able to see suppliers from connected & discoverable matching the search
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the "Request a New Supplier" button
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see scroll bar within the table to display more than 10 records
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "tes"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the Scollbar if the count is more than 10 records
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29112 @TestSuresh
  Scenario: Verify if buyer able to see icon against the business name for "Connected Suppliers" Suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "Sdemo may7"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the icon
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see hover over message for "Connected Suppliers" suppliers icon
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    #Taken the supplier form existing suppliers
    Then Enter Supplier Company Name as "Sdemo may7"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    Then Mouse hover on the Icon and Verify the Message
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see hover over message for "Connected Suppliers" suppliers icon for preloaded suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    #Taken the Preload Supplier form existing suppliers
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    And  Click on "Search" button
    Then Mouse hover on the Icon and Verify the Message
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see Cancel button to exit the search request
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "test"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Cancel" button

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer unable to see icon against the business name for "Connected Suppliers" Suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "Admintestdatasupplier"
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the icon should not appear
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29112 @SRMSanityCheck
  Scenario: Verify if buyer able to click on “Proceed with selection” button to create a request for an existing supplier
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "Admintestdatasupplier"
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    When Wait 20 seconds
    And  Click on existing supplier
    When Wait 10 seconds
    Then Verify the "Initiate Supplier Request" label

  @Regression @Buyer @SRM3 @SLYN-29112 @SRMSanityCheck
  Scenario: Verify if buyer able to click and proceed with “Request a new supplier” button to proceed with a new supplier
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    Then Verify the "Request a New Supplier" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Initiate Supplier Request" label

  @Regression @Buyer @SRM3 @SLYN-29112
  Scenario: Verify if buyer able to see Supplier Request on left menu when user has permissions of create on Supplier Request security module
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequest" security module
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    # Login with User Admin user
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequest" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify if buyer able to click and proceed with “Request a new supplier” button to proceed with a new supplier
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Supplier Company Name" label
    And  Verify the "Legal Business Name" label
    And  Verify the "Tax Country/Region" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the address fields visible based on tax country Albania
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Albania" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Supplier Company Name" label
    And  Verify the "Legal Business Name" label
    And  Verify the "Address Line 1" label
    And  Verify the "Address Line 2  (Optional)" label
    And  Verify the "District  (Optional)" label
    And  Verify the "City " label
    And  Verify the "Municipality  (Optional)" label
    And  Verify the "Postal Code  (Optional)" label
    And  Verify the "PO Box  (Optional)" label
    And  Verify the "PO Box Postal Code  (Optional)" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the address fields visible based on tax country Algeria
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Supplier Company Name" label
    And  Verify the "Legal Business Name" label
    And  Verify the "Address Line 1" label
    And  Verify the "Address Line 2  (Optional)" label
    And  Verify the "PO Box  (Optional)" label
    And  Verify the "PO Box Postal Code  (Optional)" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the Optional text after field name for optional parameters
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Supplier Company Name" label
    And  Verify the "Legal Business Name" label
    And  Verify the "Address Line 2  (Optional)" label
    And  Verify the "PO Box  (Optional)" label
    And  Verify the "PO Box Postal Code  (Optional)" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the user able to move Supplier Contacts page after click on Save Draft & Proceed button
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    Then Verify the "Supplier Company Name" label
    And  Verify the "Legal Business Name" label
    And  Verify the "Address Line 2  (Optional)" label
    And  Verify the "Province  (Optional)" label
    And  Verify the "PO Box  (Optional)" label
    And  Click on "Save Draft & Proceed" button
    And  Verify the "Contact 1" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the "Save Draft & Proceed" button status when all the mandatory fields are updated
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Verify the "Save Draft & Proceed" button state
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the "Cancel" button on Initiate Supplier Request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Verify the "Cancel" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the exit the search when we click on Cancel button
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the user should be navigated to previous screen when we click on Back button
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Click on "Back" button
    Then Verify the "Look up your supplier in TYS" page
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the next button state when all the mandatory field are entered
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Verify the "Next" button state as enabled
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the next page when we click on Next button
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    When Wait 10 seconds
    And  Click on "Next" button
    Then Verify the "Contact 1" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the tool tip when mouse hover on next button when it is disabled
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Verify the ToolTip of Next button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29330
  Scenario: Verify the popup message when we take the preloaded supplier
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on the Supplier Company Name text box
    #Taken the Preload Supplier form existing suppliers
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 5 seconds
    Then Verify the Popup text with Confirm Button
    When Wait 5 seconds
    And  Click on "Confirm" button
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29335
  Scenario: Verify As a Buyer Able to View  existing connected supplier  from the “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Preload Supplier form existing suppliers
    Then Enter Supplier Company Name as "Ariba ERP Systems"
    And  Select "Germany" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    Then Verify the "inviteeCompanyName" as "Ariba ERP Systems" is disabled
    And  Verify the "inviteeCompanyLegalName" as "Ariba ERP Systems GMBH" is disabled
    And  Verify the "taxCountry" as "Germany" is disabled
    And  Verify the "addressLine1" as "1 Something Lane" is disabled
    And  Verify the "city" as "Somethig" is disabled
    And  Verify the "postalCode" as "65455" is disabled
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29335 @SRMSanityCheck
  Scenario: Verify As a Buyer Able to update the fields which are in edit mode for preloaded suppliers from the “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Preload Supplier form existing suppliers
    Then Enter Supplier Company Name as "CVS HEALTH test"
    And  Select "Germany" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Verify the "taxCountry" as "Germany" is disabled
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29335
  Scenario: Verify the user able to move Supplier Contacts page after click on Save Draft & Proceed button for preloaded suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "CVS HEALTH test"
    And  Select "Germany" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    When Wait 10 seconds
    And  Click on "Save Draft & Proceed" button
    When Wait 10 seconds
    And  Verify the "Initiate Supplier Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29335
  Scenario: Verify the "Save Draft & Proceed" button status when all the mandatory fields are updated for preloaded suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "CVS HEALTH test"
    And  Select "Germany" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    When Wait 10 seconds
    And  Verify the "Save Draft & Proceed" button with disabled state
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29335
  Scenario: Verify the "next" button status and on click on next button to proceed when all the mandatory fields are updated for preloaded suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "CVS HEALTH test"
    And  Select "Germany" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    When Wait 10 seconds
    And  Verify the "Next" button state
    And  Click on "Next" button
    And  Verify the "Initiate Supplier Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29335
  Scenario: Verify the exit the search when we click on Cancel button for preloaded suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "CVS HEALTH test"
    And  Select "Germany" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 10 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29331
  Scenario: Verify As a Buyer Able to View discoverable supplier  from the “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the discoverable Supplier form existing suppliers
    Then Enter Supplier Company Name as "KS Bakers"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    Then Verify the "inviteeCompanyName" as "KS Bakers" is disabled
    And  Verify the "inviteeCompanyLegalName" as "KS Bakers Inc." is disabled
    And  Verify the "addressLine1" as "65 HImayatnagar" is disabled
    And  Verify the "city" as "Hyderabad" is disabled
    And  Verify the "postalCode" as "546545" is disabled
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29331
  Scenario: Verify the exit the search when we click on Cancel button for discoverable suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the discoverable Supplier form existing suppliers
    Then Enter Supplier Company Name as "KS Bakers"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29331
  Scenario: Verify the "next" button status and on click on next button to proceed when all the mandatory fields are updated for discoverable suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the discoverable Supplier form existing suppliers
    Then Enter Supplier Company Name as "KS Bakers"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Verify the "Next" button state
    When Wait 10 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Verify the "Initiate Supplier Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29331
  Scenario: Verify the "Save Draft & Proceed" button status when all the mandatory fields are updated for discoverable suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the discoverable Supplier form existing suppliers
    Then Enter Supplier Company Name as "KS Bakers"
    And  Select "India" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Verify the "Save Draft & Proceed" button with disabled state
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify the buyer is on the supplier contacts screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    When Wait 10 seconds
    And  Click on "Next" button
    And  Verify the "Contact 1" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339 @SRMSanityCheck
  Scenario: Verify the buyer is able to view the pre-populated data on the screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    Then Verify the "firstName" as "First Name" is disabled
    And  Verify the "lastName" as "Last Name" is disabled
    And  Verify the "email" as "ufqhkulzgpvtltd@maildrop.cc" is disabled
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify As a Buyer able to view ‘Add More +’ button on supplier contact details
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Verify the "Add More" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify As a Buyer able to click on ‘Add More +’ button on supplier contact details
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Click on "Add More" button
    And  Verify the "Contact 2" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify As a Buyer able to view ‘Add More +’ button on supplier contact details
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Click on "Add More" button
    And  Verify the "Contact 2" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify As a Buyer able to view First Name on supplier contact details on the Initiate supplier request Screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    Then Verify the "firstName" as "First Name" is disabled
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify the limit of character on Job Title field of supplier contact details on the Initiate supplier request Screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    Then Enter "title" name with 101 chars
    And  Wait 10 seconds
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify As a Buyer able to view Contact Number as (optional) on the Supplier Contact details while Initiating supplier request Screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    Then Verify the "Contact Number (optional)" label
    And  Wait 10 seconds
    And  Logout from the system



  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: verify the buyer is able to view the "Cancel Button" on supplier contacts
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Wait 10 seconds
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29339
  Scenario: Verify Buyer is able to route to next screen upon clicking on Next button on Supplier contact
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Click on "Next" button
    Then Verify the "Enter the supplier segmentation related to this request" label
    And  Wait 10 seconds
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29339 @SRMSanityCheck
  Scenario: Verify the buyer is able to view the "Next Button" enabled on supplier contacts screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    #Taken the Pending invite Supplier form existing suppliers
    Then Enter Supplier Company Name as "uFQHKUlzg pvt ltd"
    And  Select "Argentina" Country from Dropdown value
    And  Click on "Search" button
    And  Click on first record in table
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestBusinessAutomation"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Select region as "Chaco"
    And  Enter "postalCode" name as "1234"
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Verify the "Next" button state as enabled
    And  Wait 10 seconds
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29329
  Scenario: Verify the buyer is on "Supplier Segmentation”
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    Then Verify the "Supplier Segmentation (Optional)" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29329
  Scenario: Verify the buyer is navigate to Supplier Contact page if we click on Back button on "Supplier Segmentation”
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Back" button
    Then Verify the "Supplier Contacts" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29329
  Scenario: Verify the buyer is navigate to Request Assessment page if we click on next button on "Supplier Segmentation”
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    Then Verify the "Request Assessment" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29329
  Scenario: Verify the buyer is navigate to Initiate supplier request page if we click on Cancel button on "Supplier Segmentation”
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29334
  Scenario: Verify the buyer is navigate to  "Supplier Segmentation Optional page”
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Supplier Segmentation (Optional)" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29334 @SRMSanityCheck
  Scenario: Verify the buyer view "Current Segmentation” header for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Current Segmentation" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29334
  Scenario: Verify the buyer view "Save Draft & Proceed” button state when we navigate to Supplier Segmentation(optional) tab for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Save Draft & Proceed" button state
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29334
  Scenario: Verify the user navigate to back to Initiate supplier page when we click on Cancel button on Supplier Segmentation(optional) tab for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" button
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29334 @SRMSanityCheck
  Scenario: Verify the user navigate to back to Supplier Contacts page when we click on Back button on Supplier Segmentation(optional) tab for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Back" button
    When Wait 15 seconds
    Then Verify the "Contact 1" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29334
  Scenario: Verify the next button state on Supplier Segmentation(optional) tab for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Next" button state
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29332
  Scenario: Verify the Identifiers component is not appeared for existing suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name as "supplieruknewapproval"
    And  Select "France" Country from Dropdown value
    When Wait 10 seconds
    And  Click on "Search" button
    When Wait 10 seconds
    And  Click on first record in table
    And  Enter "inviteeCompanyLegalName" name as "supplieruknewapproval"
    When Wait 5 seconds
    And  Enter "addressLine1" name as "Test"
    When Wait 5 seconds
    And  Enter "city" name as "Hyd"
    When Wait 5 seconds
    And  Enter "postalCode" name as "1234"
    When Wait 5 seconds
    And  Click on "Next" button
    When Wait 10 seconds
    Then Verify the "Contact 1" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29332
  Scenario: Verify the Identifiers component is not appeared for new suppliers
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Contact 1" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29114
  Scenario: Verify the buyer is able to view the "Request Assessment" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Request Assessment" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29114
  Scenario: Verify the buyer is able to navigate back to Supplier Segmentation(Optional) page from the "Request Assessment" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Back" button
    Then Verify the "Supplier Segmentation (Optional)" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29114
  Scenario: Verify the buyer is able to navigate to Intiate Supplier Request page from the "Request Assessment" screen on click on Cancel button
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Cancel" button
    Then Verify the "Initiate Supplier Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29114
  Scenario: Verify the buyer is able to view Next button on "Request Assessment" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Next" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29114
  Scenario: Verify the buyer is able to view Save Draft and Proceed button on "Request Assessment" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    Then Verify the "Save Draft & Proceed" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490 @SRMSanityCheck
  Scenario: Verify the buyer is able to view "Submit Request" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Submit Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Save Draft" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Save Draft" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Back" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Back" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Cancel" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Cancel" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490 @SRMSanityCheck
  Scenario: Verify the buyer is able to view "Supplier Information" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Supplier Information" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "LegalName" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "TestLegalname" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Addressline1" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Test" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490 @SureshTest
  Scenario: Verify the buyer is able to view "postalCode" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "12345" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490 @SureshTest
  Scenario: Verify the buyer is able to view "title" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "TitleTest" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490 @SureshTest
  Scenario: Verify the buyer is able to view "firstname and Last Name" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "FirstTest" label
    Then Verify the "LastTest" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "My Submitted Requests" label when we submit request
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "My Submitted Requests" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Drafts" label when we Save Draft request
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Drafts" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29133 @SRMSanityCheck
  Scenario: Verify the buyer is able to view "Supplier Name" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Supplier Name" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Request ID" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Request ID" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Request Date" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Request Date" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Requested By" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Requested By" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Status" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Status" column in table header
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "company name" label in table in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    #And  Save the "Legal Business Name" on submit request page
    #And  Store the Company name
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Company name" under My submitted requests
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133 @SureshTestt @SRMSanityCheck
  Scenario: Verify the buyer is able to view "Supplier Name" label in table in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Supplier Name" under My submitted requests
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Company Name" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Company Name" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Request Date" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Request Date" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Requested By" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Requested By" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Expiry Date" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Expiry Date" label
    And  Logout from the system



  @Regression @Buyer @SRM3 @SLYN-291355 @SRMSanityCheck
  Scenario: Verify the buyer is able to view "Expiry Date" based on current date in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Validate "Expiry Date" in drafts
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Request Date" based on current date in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Validate "Request Date" in drafts
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Submit Request" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Submit Request" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Save Draft" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Save Draft" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Back" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Back" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Cancel" button on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Cancel" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Supplier Information" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Supplier Information" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "LegalName" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "TestLegalname" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Addressline1" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "Test" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "postalCode" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "12345" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "title" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "TitleTest" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "firstname and Last Name" label on "Reveiw and Submit" screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    Then Verify the "FirstTest" label
    Then Verify the "LastTest" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "My Submitted Requests" label when we submit request
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "My Submitted Requests" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29490
  Scenario: Verify the buyer is able to view "Drafts" label when we Save Draft request
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 15 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Drafts" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Supplier Name" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 15 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 15 seconds
    Then Verify the "Supplier Name" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Request ID" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Request ID" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Request Date" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Request Date" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Requested By" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Requested By" column in table header
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Status" label in table column in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Status" column in table header
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "company name" label in table in Supplier Requests page
    When Wait 15 seconds
    And  Click "Supplier Requests" tab
    When Wait 15 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    #And  Save the "Legal Business Name" on submit request page
    #And  Store the Company name
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Company name" under My submitted requests
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29133
  Scenario: Verify the buyer is able to view "Legal Business Name" label in table in Supplier Requests page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Submit Request" button
    And  Wait 10 seconds
    Then Verify the "Legal Business Name" under My submitted requests
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Company Name" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Company Name" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Request Date" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Request Date" label
    And  Logout from the system


  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Requested By" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 10 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 15 seconds
    Then Verify the "Requested By" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Expiry Date" label in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 15 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 15 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Verify the "Expiry Date" label
    And  Logout from the system



  @Regression @Buyer @SRM3 @SLYN-291355
  Scenario: Verify the buyer is able to view "Expiry Date" based on current date in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 15 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Validate "Expiry Date" in drafts
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29135
  Scenario: Verify the buyer is able to view "Request Date" based on current date in table column in Drafts page
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Wait 10 seconds
    And  Select "Algeria" Country from Dropdown value
    And  Click on "Search" button
    And  Click on "Request a New Supplier" button
    When Wait 10 seconds
    And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
    And  Enter "addressLine1" name as "Test"
    And  Enter "postalCode" name as "12345"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Enter "firstName" name as "FirstTest"
    And  Enter "lastName" name as "LastTest"
    And  Enter "title" name as "TitleTest"
    And  Enter "email" name as "testAuto@mailinator.com"
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Yes" radio button on Request Assessment page
    And  Click on "Next" button
    When Wait 15 seconds
    And  Click on "Save Draft" button
    And  Wait 10 seconds
    Then Validate "Request Date" in drafts
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29134
  Scenario: Verify if buyer able to navigate to Supplier Request screen then verify Apply Filter screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on "Submitted Requests" tab on Supplier request screen
    And  Click on "Filter by" button
    Then Verify the "Apply Filters" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29134
  Scenario: Verify if buyer able to search by Company Name (business name) or  request ID on Search By field
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on "Submitted Requests" tab on Supplier request screen
    And  Click on "Filter by" button
    And  Enter "companyName" name as "Tata"
    And  Click on "Search" button
    Then Verify the "Tata" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29134 @SRMSanityCheck
  Scenario: Verify if buyer able to see Filter by accordians on Supplier request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on "Submitted Requests" tab on Supplier request screen
    And  Click on "Filter by" button
    And  Enter "companyName" name as "Tata"
    And  Click on "Search" button
    Then Verify the "Saved Filters" label
    And  Verify the "Requester" label
    And  Verify the "Tax Geography" label
    And  Verify the "Country/Region" label
    And  Verify the "Request Status" label
    And  Verify the "Pending Segmentation Flag" label
    And  Verify the "Supplier Segmentation" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29134
  Scenario: Verify if buyer able to see Save Filter functionality for Supplier Request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on "Submitted Requests" tab on Supplier request screen
    And  Click on "Filter by" button
    And  Enter "companyName" name as "Tata"
    And  Click on "Search" button
    Then Verify the "Saved Filters" label
    And  Verify the "Requester" label
    And  Verify the "Tax Geography" label
    And  Verify the "Country/Region" label
    And  Verify the "Request Status" label
    And  Verify the "Pending Segmentation Flag" label
    And  Verify the "Supplier Segmentation" label
    And  Logout from the system

  @Regression @Buyer @SRM3 @SLYN-29121 @SRMSanityCheck
  Scenario: Verify As a Buyer, is able to click on request row on the Submitted Requests tab on Supplier Request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on "Submitted Requests" tab on Supplier request screen
    And  Click on "Filter by" button
    And  Click on "Request Status" dropdown
    And  Select "Pending" dropdown value
    And  Click on "Pending Segmentation Flag" dropdown
    And  Click on the "yes" checkbox on Filter
    And  Click on "Search" button
    And  Click on First record in filtered table
    Then Verify the "Complete Segmentation" label
    And  Logout from the system





