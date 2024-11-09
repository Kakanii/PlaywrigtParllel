Feature: My Suppliers page
  #MySuppliers
  # @BuyerPagination MySuppliersearch 

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab

  @Regression @MySuppliers @Buyer
  Scenario: Verify title on My Suppliers page
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Invite Supplier button visibility and enabled on My Suppliers page
    Then Show Invite Supplier button on My Supplier page "true"
    Then Invite Supplier button enabled on My Supplier page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify title on Invite Supplier modal window
    Then Click on Invite Supplier button
    Then Show title on Invite Supplier modal window "Invite Supplier"
    Then Switch to the parent window
    Then Logout from the system

 @Regression @MySuppliers @Buyer
  Scenario: Verify the availability of all the filters in Connected suppliers tab
    Then Click "Filter by" button
    Then Verify "Supplier Name" button in Filters tab is "true"
    Then Verify "Saved Filters" button in Filters tab is "true"
    Then Verify "Invitee/Invited By" button in Filters tab is "true"
    #Then Verify "Supplier Relationship Contacts" button in Filters tab is "true"
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

   @Regression @MySuppliers @Buyer
  Scenario: Verify Supplier  Name Filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Reset Filters" button
    Then Click on "Supplier Name" filter
    Then Enter Supplier Name as "KiranInc"
    Then Click on "Search" button in connected supplier filter by
    Then User can able to see Supplier name in search results
    Then Logout from the system

  #@Regression @MySuppliers @Buyer
  Scenario: Verify Saved Filters option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Supplier Name" filter
    Then Enter Supplier Name as "AS Technologies"
    Then Click on "Status" filter
    Then Select the Pending Invites Status under dropdown
    Then Wait for 3 seconds   
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
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
    Then Verify element "Are you sure you want to delete AutomationTest ?" displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invited By First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invited By Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invited By Email ID" as "myautobuyer@mailinator.com"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results filtered on column "Invited By" with "myautobuyer@mailinator.com"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invitee First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invitee Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invited By Email ID" as "kiran.chadalavada@itpeoplecorp.com"
    Then Click on "Search" button in connected supplier filter by
    When Wait 5 seconds
    Then Verify search results filtered on column "Company Name" with "KiranInc" on Connected Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Invitee/Invited By filter option in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Invitee/Invited By" filter
    #Then Enter the "First Name" in "Invited By First Name" as "Ramyasree"
    #Then Enter the "Last Name" in "Invited By Last Name" as "Kanakamedala"
    Then Enter the "Email" in "Invited By Email ID" as "myautobuyer@mailinator.com"
    Then Enter the "Email" in "Invitee Email ID" as "indiasupplier1619603474623@mailinator.com"
    Then Click on "Search" button in connected supplier filter by
    Then Verify search results filtered on column "Company Name" with "FACEBOOK INDIA ONLINE SERVICES PRIVATE LIMITED" on Connected Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "EMEA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Tax Geography filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "NA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Albania" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Austria" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Brazil" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "China" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Poland" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Country/Region Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Accepted Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Accepted Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Declined Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Declined Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Lifecycle Updates Review"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Lifecycle Updates Review"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Onboarded"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Onboarded"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Pending Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Pending Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Preloaded"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Preloaded"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Profile Complete"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Profile Complete"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Ready For Review"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Ready For Review"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Returned to Supplier"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Returned to Supplier"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Revalidation Review"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Revalidation Review"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Status Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Revalidation Started"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Revalidation Started"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @MySuppliers @Buyer @QuickCheck
  Scenario: Verify Multiple Filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Status" filter
    And Click on Search and Select input field for Status
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Australia" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Accepted Invites"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Diverse Supplier filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Diverse Supplier" filter
    Then select on "Diversity Category" dropdown as "LGBTQ+"
    Then Click on "Search" button in connected supplier filter by
    Then Click on the Search by supplier name and press Enter
    #Then Verify profile page "Diversity Category" as "LGBTQ+"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify On-Hold filter Options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "On-Hold" filter
    Then Select the On-Hold under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "On-Hold"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Block filter options in connected supplier page
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Block" filter
    Then Select the Block under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Blocked"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button visibility on My Supplier page
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button  and Prev arrow button functionality on My Supplier page
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

   @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button visibility on My Supplier page if row per page is 100
    Then Change row per page to "100"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 80
    Then Change row per page to "80"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button visibility and status on My Supplier page if row per page is 60
    Then Change row per page to "60"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 40
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 20
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 10
    Then Change row per page to "10"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Prev button visibility and status on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 20
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 40
    Then Change row per page to forty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 60
    Then Change row per page to sixty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 80
    Then Change row per page to eighty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Prev button visibility on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button visibility and status on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @MySuppliers @Buyer
  Scenario: Verify Next button and Prev button functionality on Connected Supplier page if row per page is 100
    Then Change row per page to hundred
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system
    
    
    