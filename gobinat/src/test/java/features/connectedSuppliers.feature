Feature: Connected Suppliers Options

  #ConnectedSuppliersOptions
  Background: Login as a Buyer
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Wait for 3 seconds
    Then Click "Connected Suppliers" tab
    Then Wait for 3 seconds

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify if Buyer is able to view connected suppliers table with all headers
    Then Wait for 3 seconds
    Then Verify "Connected suppliers" header contains label as "Company Name"
    And Verify "Connected suppliers" header contains label as "Supplier Last Updated"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Invited By"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Status"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify if Buyer is able to view connected suppliers table with all headers and sort icon
    Then Wait for 3 seconds
    Then Verify "Connected suppliers" header contains label as "Company Name"
    And Verify "Connected suppliers" header contains label as "Supplier Last Updated"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Invited By"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Status"
    Then Show Sort icon when hover on "Supplier Last Updated" column
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify Sort icon on "Supplier Last Updated" column is clickabled
    Then Wait for 3 seconds
    Then Verify "Connected suppliers" header contains label as "Company Name"
    And Verify "Connected suppliers" header contains label as "Supplier Last Updated"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Invited By"
    Then Wait for 3 seconds
    And Verify "Connected suppliers" header contains label as "Status"
    Then Click on sort icon in "Supplier Last Updated" column
    #Then Verify "Approval Status" column is sorted in descending order
    Then Logout from the system

  @ConnectedSuppliersFilter @Buyer @TYSFunctionality
  Scenario: Verify the Functionality of all the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Verify "Supplier Name" button in Filters tab is "true"
    Then Verify "Saved Filters" button in Filters tab is "true"
    Then Verify "Invitee/Invited By" button in Filters tab is "true"
    Then Verify "Supplier Relationship Contacts" button in Filters tab is "true"
    Then Verify "Tax Geography" button in Filters tab is "true"
    Then Verify "Country/Region" button in Filters tab is "true"
    Then Verify "Status" button in Filters tab is "true"
    Then Verify "Diverse Supplier" button in Filters tab is "true"
    Then Verify "UNSPSC" button in Filters tab is "true"
    Then Verify "On-Hold" button in Filters tab is "true"
    Then Verify "Block" button in Filters tab is "true"
    Then Verify "Custom Fields" button in Filters tab is "true"
    Then Verify "Buyer System Name" button in Filters tab is "true"
    Then Verify "Organization Type" button in Filters tab is "true"
    Then Verify "Supplier Questionnaire Group" button in Filters tab is "true"
    Then Wait for 2 seconds
    Then Click "Search" button
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the visibility of all the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Show "Supplier Name" in Filters tab
    Then Show "Saved Filters" in Filters tab
    Then Show "Invitee/Invited By" in Filters tab
    Then Show "Supplier Relationship Contacts" in Filters tab
    Then Show "Tax Geography" in Filters tab
    Then Show "Country/Region" in Filters tab
    Then Show "Status" in Filters tab
    Then Show "Diverse Supplier" in Filters tab
    Then Show "UNSPSC" in Filters tab
    Then Show "On-Hold" in Filters tab
    Then Show "Block" in Filters tab
    Then Show "Custom Fields" in Filters tab
    Then Show "Buyer System Name" in Filters tab
    Then Show "Organization Type" in Filters tab
    Then Show "Supplier Questionnaire Group" in Filters tab
    Then Wait for 2 seconds
    Then Click "Search" button
    Then Wait for 3 seconds
    Then Logout from the system

  #ScrollToTop
  @Smoke @ScrollToTop @Pending @SupplierQuickview @ConnectedSuppliersOptions @ConnectedSuppliers @ConnectedSuppliersFilter
  Scenario: Verify Scroll TO TOP Button Functionality in Action Center Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Pending Invites"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier for "Pending Invites"
    Then Wait for 3 seconds
    Then Click on the Action Center
    #Then Click on "Action Center" Tab on reading panel
    Then Scroll down to the end of the page
    # Not showing the scroll to top button
    Then Verify Scroll to top button Functionality
    #Then Click on Scroll to top button
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @Supplierstatus @DeclinedInviteProfile @SupplierQuickview @ConnectedSuppliersOptions @ConnectedSuppliersFilter
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Decline Invite" supplier status
    #Then Show selected Supplier in search results "Declined Invites"
    # Profile tab
    Then Click on "Filter by" button on "Connected suppliers"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Declined Invites"
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 5 seconds
    Then Click on the Search by supplier for "Declined Invites"
    Then Wait for 3 seconds
    Then Click on "Profile" Tab on reading panel
    Then Show "Reason for Decline" component on the reading panel
    #Then Click on "Reason for Decline" collapse icon
    Then Click on the "Profile_icon" collapse icon
    #####Then Show "Liaisons" component on the reading panel
    ###Then Show "Invite New Liaison" button in the "Liaisons" component
    #Then Click on "Liaisons" collapse icon
    #Then Show "Corporate Relationships" component on the reading panel
    #Then Click on "Corporate Relationships" collapse icon
    Then Verify the "Contacts" section visibility on the "Profile" page
    Then Click on the "contacts_icon" collapse icon
    Then Verify the "Locations" section visibility on the "Profile" page
    Then Click on the "Locations_icon" collapse icon
    # Action Center
    Then Click on the Action Center
    Then Verify the "Supplier Relationship Contacts" section visibility on the "Profile" page
    Then Verify the "Relationship History" section visibility on the "Profile" page
    #Then Verify the "Pre Invite Assessment Questionnaire" section visibility on the "Profile" page
    Then Verify the "Notes" section visibility on the "Profile" page
    Then Logout from the system

  #Onboarded
  @Smoke @Supplierstatus @onboardedprofile @SupplierQuickview @ConnectedSuppliersOptions @ConnectedSuppliersFilter
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Onboarded" supplier status
    Then Click on "Filter by" button on "Connected suppliers"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Onboarded"
    #Then Show selected Supplier in search results "Onboarded"
    Then Click on "Search" button in connected supplier filter by
    Then Open Grid Result Row 1
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    #Then Click "View Supplier" button
    #overview
    Then Verify the "Company Profile Overview" section visibility on the "Profile" page
    Then Verify the "Industry & Activities" section visibility on the "Profile" page
    Then Verify the "Contacts" section visibility on the "Profile" page
    Then Verify the "Ownership" section visibility on the "Profile" page
    Then Verify the "Locations" section visibility on the "Profile" page
    Then Verify the "Corporate Relationships" section visibility on the "Profile" page
    Then Verify the "Questionnaires" section visibility on the "Profile" page
    Then Verify the "Questionnaires" section visibility on the "Profile" page
    Then Verify the "Supplier Questionnaire Group" section visibility on the "Profile" page
    Then Verify the "Bank Accounts" section visibility on the "Profile" page
    Then Verify the "Description" on the screen
    Then Verify the "Legal Business Name" on the screen
    Then Verify the "Date Established" on the screen
    Then Verify the "Tax Country/Region" on the screen
    Then Verify the "Company Email" on the screen
    Then Verify the "BvD ID number" on the screen
    Then Verify the "Company Email" on the screen
    Then Verify the "Number of Full-Time Employees" on the screen
    Then Verify the "Number of Part-Time Employees" on the screen
    Then Verify the "Business Type" on the screen
    Then Verify the "Starting month of the fiscal year" on the screen
    Then Verify the "Are you a Diversity Supplier?" on the screen
    Then Verify the "UNSPSC Product Code(s)" on the screen
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify the Supplier Name in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Supplier Name button
    Then Enter the Supplier Name as "TYSAutomation123" Under the Supplier Name
       # Then Enter the Supplier Name Under the Supplier Name
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify the Status As Accepted Invites in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    #Then Click on the Status button
    #Then Select the Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Click on the Search by supplier for "Accepted Invites"
    Then Wait for 3 seconds
    Then verify the status as "Accepted"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Declined Invites in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Declined Invites"
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 5 seconds
    Then Click on the Search by supplier for "Declined Invites"
    Then Wait for 3 seconds
    Then verify the status as "Declined Invite"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Lifecycle Updates Review in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Lifecycle Updates Review"
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 5 seconds
    Then Click on the Search by supplier for "Lifecycle Updates Review"
    #Then Click on the Search by supplier name and press Enter
    Then verify the status as "Lifecycle Updates Review"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify the Status As Onboarded in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Onboarded"
    #Then Click on the Status button
    #Then Select the Onboarded Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    #Then Click on the Search by supplier name and press Enter
    Then Click on the Search by supplier for "Onboarded"
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the status as "Onboarded"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Pending Invites in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Pending Invites"
    #Then Click on the Status button
    #Then Select the Pending Invites Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    #    Then Click on the Search by supplier name and press Enter
    Then Click on the Search by supplier for "Pending Invites"
    Then Wait for 3 seconds
    Then verify the status as "Pending Invites"
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Profile Complete in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    #Then Click on the Status button
    #Then Select the Profile Complete Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    #    Then Click on the Search by supplier name and press Enter
    Then Click on the Search by supplier for "Profile Complete"
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the status as a Profile Complete
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Ready For Review in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Ready For Review"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Ready For Review"
    Then Click on the Search by supplier for "Ready For Review"
    #Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Status As Returned to Supplier in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Returned to Supplier"
    #Then Click on the Status button
    #Then Select the Returned to Supplier Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Returned to Supplier"
    Then Click on the Search by supplier for "Returned to Supplier"
    #Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Country/Region As United States of America in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Country/Region button
    Then Select the Country/Region under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Country/Region As United Kingdom in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Country/Region button
    Then Select the Country/Region under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Tax Geography As APAC/EMEA/LATAM/NA in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Tax Geography button
    Then Select the Tax Geography under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Diverse Supplier in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Diverse Supplier button
    Then Select the Diverse Supplier under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the UNSPSC in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the UNSPSC button
    Then Select the UNSPSC under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the On-Hold in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the On-Hold button
    Then Select the On-Hold under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Block in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Block button
    Then Select the Block under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Custom Fields in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Custom Fields button
    #Then Select the Custom Fields under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Buyer System Name in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Buyer System Name button
    #Then Select the Custom Fields under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Organization Type in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the Organization Type Name button
    #Then Select the Custom Fields under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 15 seconds
    Then Logout from the system

  @Smoke @ConnectedSuppliersFilter @Buyer @CDCI
  Scenario: Verify the Supplier Questionnaire Group in the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    #Then Click on the Supplier Questionnaire Group Name button
    #Then Select the Custom Fields under dropdown
    Then Click on "Supplier Questionnaire Group" filter
    Then Click on "Supplier Questionnaire Group" dropdown
    Then Click on "Automation" option in "Supplier Questionnaire Group" dropdown
    #Then Select the "Automation" in filter Dropdown on connected suppliers
    Then Wait for 3 seconds
    Then Click on "Search" button in connected supplier filter by
    Then Logout from the system
