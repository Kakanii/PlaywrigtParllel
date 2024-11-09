Feature: Mange contacts

  #Mange Approvals
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Contacts" tab

  @Regression @Mangecontacts @Buyer @Sanity @ManageContactsFilterOptions          
  Scenario: Verify if Buyer is able to view Approvals Panel on dashboard
    #Then Click on "Suppliers" Down arrow on Dashboard
    And Show the title "Manage Contacts" on Manage Approvals Page
    Then Logout from the system

  @Regression @Mangecontacts @Buyer @Sanity @ManageContactsFilterOptions          
  Scenario: Verify if Buyer is able to view Manage contacts table with all headers
    Then Wait for 3 seconds
    And Verify "Managecontacts" header consists  as "Contact Name"
    Then Wait for 3 seconds
    And Verify "Managecontacts" header consists  as "Company Name"
    Then Wait for 3 seconds
    And Verify "Managecontacts" header consists  as "Job Title"
    Then Wait for 3 seconds
    Then Verify manage contact column "suppliercontactjobtitle"
    Then Verify manage contact column "suppliercontactemail"
    Then Verify manage contact column "suppliercontactphonenumber"
    Then Verify manage contact column "suppliercontacttype"
    Then Logout from the system

  @Smoke @MangecontactsFilter @Buyer @ManageContactsFilterOptions  @TYSFunctionality
  Scenario: Verify the Functionality of all the filters on Manage Contacts tab
    Then Click "Filter by" button
    Then Verify "Contact Type" button in Filters tab is "true"
    Then Verify "Supplier Business Name" button in Filters tab is "true"
    Then Verify "Saved Filters" button in Filters tab is "true"
    Then Verify "Tax Geography" button in Filters tab is "true"
    Then Verify "Country/Region" button in Filters tab is "true"
    Then Verify "UNSPSC" button in Filters tab is "true"
    Then Verify "Status" button in Filters tab is "true"
    Then Verify "Supplier Questionnaire Group" button in Filters tab is "true"
    Then Verify "Diverse Supplier" button in Filters tab is "true"
    Then Verify "Buyer System Name" button in Filters tab is "true"
    Then Verify "Organization Type" button in Filters tab is "true"
    Then Verify "On-Hold" button in Filters tab is "true"
    Then Verify "Block" button in Filters tab is "true"
    Then Verify "Custom Fields" button in Filters tab is "true"
    Then Close Apply Filters
    Then Logout from the system

  @SupplierFilterOptions @ManageContactsOptions @ManageContactsFilterOptions @TYSFunctionality  
  Scenario: Verify Contact Type By filter option in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Contact Type" filter
    Then Click on "Contact Type" dropdown
    Then Click on "Customer Relationship Contact" option in "Contact Type" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Contact Type"
    Then Logout from the system

 @SupplierFilterOptions @ManageContactsOptions @ManageContactsFilterOptions @TYSFunctionality 
  Scenario: Verify Contact Type By filter option in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Contact Type" filter
    Then Click on "Contact Type" dropdown
    Then Click on "Chief Executive Officer or Equivalent" option in "Contact Type" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Contact Type"
    Then Click on contact type segment
    Then Verify "Chief Executive Officer or Equivalent" contact type
    Then Click on Close icon on modal
    Then Logout from the system

   @SupplierFilterOptions @ManageContactsOptions @ManageContactsFilterOptions @TYSFunctionality
  Scenario: Verify Contact Type By filter option in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Contact Type" filter
    Then Click on "Contact Type" dropdown
    Then Click on "Data Protection Officer" option in "Contact Type" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Contact Type"
    Then Click on contact type segment
    Then Verify "Data Protection Officer" contact type
    Then Click on Close icon on modal
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Supplier Business Name Filter option in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Reset Filters" button
    Then Click on "Supplier Business Name" filter
    Then Enter Supplier Name as "LARSEN & TOUBRO LIMITED"
    Then Click on "Search" button in connected supplier filter by
    #Then Verify search results filtered on column "Company Name" with "LARSEN & TOUBRO LIMITED"
    Then Logout from the system

  #saved filter not implemented in Manage contacts section
  @Regression @SupplierFilterOptions @ManageContactsOptions @ManageContactsFilterOptions
  Scenario: Verify Saved Filters option in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Supplier Business Name" filter
    Then Enter Supplier Name as "LARSEN & TOUBRO LIMITED"
    Then Click on "Status" filter
    Then Select Pending Invites in Status dropdown "Ready for Review"
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on "Save Filter" button
    Then Enter text on "Filter Name" as "AutomationTest"
    Then Click on "Save" button available in "Save Filter"
    When Wait 5 seconds
    Then Verify element "Filter saved successfully" displayed as "true"
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Saved Filters" filter
    When Wait 2 seconds
    Then Verify element "AutomationTest" displayed as "true"
    Then Delete saved filter "AutomationTest"
    Then Verify element "Are you sure you want to delete AutomationTest ?" displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Tax Geography filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions      
  Scenario: Verify Tax Geography filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "EMEA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Tax Geography filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify clear all on manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    When Click on Clear All link
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Tax Geography filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "NA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Albania" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Austria" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Brazil" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "China" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Poland" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions     
  Scenario: Verify Country/Region Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Declined Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Lifecycle Updates Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    #Then select on "Diversity Category" dropdown as "Onboarded+"
    Then Select Pending Invites in Status dropdown "Onboarded"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Pending Invites"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Preloaded"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    #Then verify the status as "Profile Complete"
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
        Then Click on "Status" dropdown
        Then Select Pending Invites in Status dropdown "Ready For Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Returned to Supplier"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Revalidation Review"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Status Filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Revalidation Started"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

   @ManageContactsFilterOptions  @TYSFunctionality
  Scenario: Verify Multiple Filter options in Manage contacts page
    Then Refresh the page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Revalidation Started"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Australia" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Status"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Diverse Supplier filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "LGBTQ+"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Diverse Supplier"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Diverse Supplier filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Diverse Supplier" filter
        When Wait 3 seconds
        Then select on "Diversity Category" dropdown as "Minority-Owned Business"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Diverse Supplier"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Diverse Supplier filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Diverse Supplier" filter
            When Wait 3 seconds
    Then select on "Diversity Category" dropdown as "People with Disabilities"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Diverse Supplier"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Diverse Supplier filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "Veteran-Owned Business"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Diverse Supplier"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Supplier Relationship Contacts filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    And User can able to see UNSPSC Code option Family "true"
    And User can able to see UNSPSC Code option Class "true"
    And User can able to see UNSPSC Code option Commodity "true"
    Then Close Apply Filters
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Supplier Relationship Contacts filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "UNSPSC" filter
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User select a Class "Livestock" from filter dropdown
    And User select a Commodity "Dogs" from filter dropdown
    And User click on Search button
    Then verify the filtered options as "UNSPSC"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify On-Hold filter Options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "On-Hold" filter
    Then Select the On-Hold under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "On-Hold"
    #Then verify the status as "On-Hold"
    Then Logout from the system

  @Regression @MangeApprovals          
  Scenario: Verify Block filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Block" filter
    Then Select the Block under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Block"
    #Then verify the status as "Blocked"
    Then Logout from the system

  @Regression @ManageContactsFilterOptions          
  Scenario: Verify Buyer System Name filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    Then Click on "Buyer System Name" filter
    Then Click on the Buyer System Name button
    Then Click on "Search" button in connected supplier filter by
    #Then Click on the Search by supplier name and press Enter
    Then verify the filtered options as "Buyer System Name"
    #Then Click on "Action Center" Tab on reading panel
    #Then Verify the "Buyer System Details" section has the slected filters
    Then Logout from the system

  @Regression @ManageContactsFilterOptions      
  Scenario: Verify Supplier Questionnaire Group filter options in Manage contacts page
    Then Click on "Filter by" button on "Manage Contacts"
    #Then Click on "Supplier Questionnaire Group" filter
    Then Click on "Supplier Questionnaire Group" filter
    Then Click on "Select All" fifth link on filterBy
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Supplier Questionnaire Group"
    Then Logout from the system

  @Regression @BuyerPagination @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button visibility on Manage Contacts page
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button  and Prev arrow button functionality on Manage Contacts page
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button visibility on Manage Contacts page if row per page is 100
    Then Change row per page to "100"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button and Prev arrow button functionality on Manage Contacts page if row per page is 80
    Then Change row per page to "80"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button visibility and status on Manage Contacts page if row per page is 60
    Then Change row per page to "60"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button and Prev arrow button functionality on Manage Contacts page if row per page is 40
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button and Prev arrow button functionality on Manage Contacts page if row per page is 20
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @SupplierQuickview @ManageContactsOptions @ManageContacts
  Scenario: Verify Next arrow button and Prev arrow button functionality on Manage Contacts page if row per page is 10
    Then Change row per page to "10"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Prev button visibility and status on Manage Contacts page if row per page is 20
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button visibility and status on Manage Contacts page if row per page is 20
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageContactsPagination @ManageContactsOptions
  Scenario: Verify Next button and Prev button functionality on Manage Contacts page if row per page is 20
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Prev button visibility on Manage Contacts page if row per page is 40
    Then Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button visibility and status on Manage Contacts page if row per page is 40
    Then Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageContactsPagination @ManageContactsOptions
  Scenario: Verify Next button and Prev button functionality on Manage Contacts page if row per page is 40
    Then Change row per page to forty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Prev button visibility on Manage Contacts page if row per page is 60
    Then Change row per page to sixty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button visibility and status on Manage Contacts page if row per page is 60
    Then Change row per page to sixty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button and Prev button functionality on Manage Contacts page if row per page is 60
    Then Change row per page to sixty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Prev button visibility on Manage Contacts page if row per page is 80
    Then Change row per page to eighty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button visibility and status on Manage Contacts page if row per page is 80
    Then Change row per page to eighty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button and Prev button functionality on Manage Contacts page if row per page is 80
    Then Change row per page to eighty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Prev button visibility on Manage Contacts page if row per page is 100
    Then Change row per page to hundred
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button visibility and status on Manage Contacts page if row per page is 100
    Then Change row per page to hundred
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageContactsPagination @Buyer @ManageContactsOptions
  Scenario: Verify Next button and Prev button functionality on Manage Contacts page if row per page is 100
    Then Change row per page to hundred
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system
