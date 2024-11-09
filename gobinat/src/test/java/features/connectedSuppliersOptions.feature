Feature: Connected Suppliers Options

  #ConnectedSuppliersOptions
  #Background: Login as a Buyer
  # Given Start the application
  #When Click on Sign In button
  Background: Start the application
    Given Open the login page
    When Enter Redhat buyer in Email Address field
    #Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify the Functionality of all the filters in Connected suppliers tab
    Then Click "Filter by" button
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
    Then Verify "Buyer System Name" button in Filters tab is "true"
    Then Verify "Custom Fields" button in Filters tab is "true"
    Then Verify "Organization Type" button in Filters tab is "true"
    Then Verify "Supplier Questionnaire Group" button in Filters tab is "true"
    Then Close Apply Filters
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @SanitySuiteCheck @SanityCheck
  Scenario: Verify Supplier  Name Filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Reset Filters" button
    Then Click on "Supplier Name" filter
    Then Enter Supplier Name as "Abmay17"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results on Connected Suppliers page with "Company Name" as "Abmay19"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Saved Filters option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Supplier Name" filter
    Then Enter Supplier Name as "AS Technologies"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on "Save Filter" button
    Then Enter text on "Filter Name" as "AutomationTest"
    Then Click on "Save" button available in "Save Filter"
    When Wait 5 seconds
    Then Verify element "Filter saved successfully" displayed as "true"
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Saved Filters" filter
    When Wait 2 seconds
    Then Verify element "AutomationTest" displayed as "true"
    Then Delete saved filter "AutomationTest"
    Then Verify element "Are you sure you want to delete the saved filter named " displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invited By First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invited By Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invited By Email ID" as "ramaleelaibmsta@mailinator.com"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results filtered on column "Invited By" with "ramaleelaibmsta@mailinator.com"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invitee First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invitee Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invitee Email ID" as "italyinvitesupplierautomation@maildrop.cc"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results filtered on column "Company Name" with "italyinvitesupplierautomation@maildrop.cc"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invited By First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invited By Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invited By Email ID" as "ramaleelaibmsta@mailinator.com"
    #Then Enter the "First Name" in "Invitee First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invitee Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invitee Email ID" as "italyinvitesupplierautomation@maildrop.cc"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results filtered on column "Company Name" with "italyinvitesupplierautomation@maildrop.cc"
    Then Verify search results filtered on column "Invited By" with "ramaleelaibmsta@mailinator.com"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Supplier Relationship Contacts filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Supplier Relationship Contacts" filter
    Then select on "Select Role" dropdown as "Supplier Relationship Manager"
    Then select on "Select Users" dropdown as "Staging Supplier, stagincsup@mailinator.com"
    Then Click on "Search" button in connected supplier filter by
    Then Open Grid Result Row 1
    When Wait 2 seconds
    Then Click on "Action Center" button
    Then Verify "Supplier Relationship Contacts" role as "Supplier Relationship Manager" and contacts as "stagincsup@mailinator.com"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @SanitySuiteCheck @SanityCheck
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "EMEA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "NA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Albania" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Austria" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Brazil" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "China" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Poland" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

     @Regression @ConnectedSuppliersFilterOptions  @SanitySuiteCheck @SanityCheck
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Accepted Invites"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Declined Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Declined Invites"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Lifecycle Updates Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Lifecycle Updates Review"
    Then Logout from the system

     @Regression @ConnectedSuppliersFilterOptions  @HotfixCheck
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Onboarded"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Onboarded"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions 
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Pending Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Pending Invites"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Preloaded"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Preloaded"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @HotfixCheck
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Ready For Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Ready For Review"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Returned to Supplier"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Returned to Supplier"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Revalidation Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Revalidation Review"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Revalidation Started"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Revalidation Started"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Multiple Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Status" filter
    Then Select Pending Invites in Status dropdown "Revalidation Started"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Brazil" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Revalidation Started"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Diverse Supplier filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "LGBTQ+"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
   Then Verify diversity category selected is "LGBTQ+"
    Then Logout from the system
    
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Diverse Supplier filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "Minority-Owned Business"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
   Then Verify diversity category selected is "Minority-Owned Business"
    Then Logout from the system
    
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Diverse Supplier filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "People with Disabilities"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
   Then Verify diversity category selected is "People with Disabilities"
    Then Logout from the system
    
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Diverse Supplier filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "Veteran-Owned Business"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
   Then Verify diversity category selected is "Veteran-Owned Business"
       Then Logout from the system
   
   
   
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Supplier Relationship Contacts filter options in connected supplier page 
  Then Click on "Filter by" button on "Connected Supplier page"
  Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    And User can able to see UNSPSC Code option Family "true"
    And User can able to see UNSPSC Code option Class "true"
    And User can able to see UNSPSC Code option Commodity "true"
    Then Close Apply Filters
    Then Logout from the system
   
    
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Supplier Relationship Contacts filter options in connected supplier page 
  Then Click on "Filter by" button on "Connected Supplier page"
  Then Click on "UNSPSC" filter
   Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User select a Class "Livestock" from filter dropdown
    And User select a Commodity "Dogs" from filter dropdown
    And User click on Search button
    Then Click on the Search by supplier name and press Enter
    And Scroll Down the page record of the Search
    #Then Verify the "UNSPSC" section has the slected filters
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify On-Hold filter Options in connected supplier page 
  Then Click on "Filter by" button on "Connected Supplier page"
  Then Click on "On-Hold" filter
  Then Select the On-Hold under dropdown 
  Then Click on "Search" button in connected supplier filter by
  Then verify the status as ""
  Then Logout from the system


   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Block filter options in connected supplier page 
  Then Click on "Filter by" button on "Connected Supplier page"
  Then Click on "Block" filter
  Then Select the Block under dropdown
  Then Click on "Search" button in connected supplier filter by
  Then verify the status as ""
  Then Logout from the system
  
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Buyer System Name filter options in connected supplier page 
  Then Click on "Filter by" button on "Connected Supplier page"
  Then Click on "Buyer System Name" filter
  Then Click on the Buyer System Name button
  Then Click on "Search" button in connected supplier filter by
  #Then Click on the Search by supplier name and press Enter
  Then verify the filtered options as "Buyer System Name"
  #Then Click on "Action Center" Tab on reading panel
  #Then Verify the "Buyer System Details" section has the slected filters
  Then Logout from the system  
    
   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Supplier Questionnaire Group filter options in connected supplier page 
 Then Click on "Filter by" button on "Connected Supplier page"
  #Then Click on "Supplier Questionnaire Group" filter
   Then Click on "Supplier Questionnaire Group" filter
    Then verify the visibility of the filter by Supplier Questionnaire Group "true"
    Then Verify "Supplier Questionnaire Group" filter clickable "true"
  Then Select "Select All"
  Then Click on "Search" button in connected supplier filter by
  #Then Click on first record1 of the Search
  #And Scroll Down the page record of the Search
  #Then verify the "Supplier Questionnaire Group" section
  Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify On-Hold filter Options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "On-Hold" filter
    Then Select the On-Hold under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "On-Hold"
    Then Logout from the system

  @Regression @SupplierFilterOptions @ConnectedSuppliersFilterOptions @ConnectedSuppliersOptions 
  Scenario: Verify Block filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Block" filter
    Then Select the Block under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Blocked"
    Then Logout from the system

    @Regression @ConnectedSuppliersFilterOptions @SanitySuiteCheck @SanityCheck
  Scenario: Verify Combination of Country/Region, Supplier Name and Supplier Status Filter options on connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "United States of America" option in "Countries" dropdown
    Then Click on "Supplier Name" filter
    Then Enter Supplier Name as "KOCH INDUSTRIES INC."
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then verify the status as "Profile Complete"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions
  Scenario: Verify Next arrow button visibility on My Supplier page
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button  and Prev arrow button functionality on My Supplier page
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button visibility on My Supplier page if row per page is 100
    Then Change row per page to "100"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 80
    Then Change row per page to "80"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button visibility and status on My Supplier page if row per page is 60
    Then Change row per page to "60"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 40
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 20
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 10
    Then Change row per page to "10"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @ConnectedSuppliersPagination @Buyer @ConnectedSuppliersOptions
  Scenario: Verify Prev button visibility and status on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @ConnectedSuppliersPagination @Buyer @ConnectedSuppliersOptions
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ConnectedSuppliersPagination @Buyer @ConnectedSuppliersOptions
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system
   @Regression @ConnectedSuppliersFilterOptions @BuyerPagination
  Scenario: Verify Status Filter options with Ready TO Onboard in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Wait for 3 seconds
    Then Click on "Status" filter
    Then Select "Ready To Onboard" in "Status" dropdown under Connected Suppliers
    Then Click on "Search" button in connected supplier filter by
    And Wait for 3 seconds
    Then verify the status as "Ready To Onboard"
    Then Logout from the system