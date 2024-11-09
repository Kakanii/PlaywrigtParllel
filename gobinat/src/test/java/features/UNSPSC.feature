Feature: UNSPSC Filter page

  #UNSPSC Filter
  # @UNSPSCFilter MySuppliersearch
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to view UNSPSC in filter by column in My suppliers tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to click UNSPSC dropdown in filter by column in my supplier page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to see UNSPSC options in filter by column in my supplier page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    And User can able to see UNSPSC Code option Family "true"
    And User can able to see UNSPSC Code option Class "true"
    And User can able to see UNSPSC Code option Commodity "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity @QuickCheck
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC option as Segment in filter
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field
    Then Wait for 5 seconds
    Then User can see Supplier in Search results "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC options Segment and Famility in filter
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field
    Then Wait for 5 seconds
    Then User can see Supplier in Search results "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC options Segment Famility and Class in filter
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User select a Class "Livestock" from filter dropdown
    And User select a Commodity "Dogs" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field
    Then Wait for 5 seconds
    Then User can see Supplier in Search results "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify Reset Filters button in filter by on my supplier page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User click on Reset Filters button
    And Wait for 5 seconds
    And User click on filter close Icon
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to see and click Reset Filter in filter by on Connected Suppliers page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter
    Then User able to see Reset Filters button "true"
    And Reset Filter button is clickable "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to view UNSPSC in filter by column in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to click UNSPSC dropdown in filter by column in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to see UNSPSC options in filter by column in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    And User can able to see UNSPSC Code option Family "true"
    And User can able to see UNSPSC Code option Class "true"
    And User can able to see UNSPSC Code option Commodity "true"
    Then User click on filter close Icon
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC option as Segment on filter in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field on Discover page
    Then Wait for 5 seconds
    Then User can see Supplier in Search results on Discover page "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC options Segment and Famility on filter in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field on Discover page
    Then Wait for 5 seconds
    Then User can see Supplier in Search results on Discover page "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC options Segment Famility and Class on filter in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User select a Class "Livestock" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field on Discover page
    Then Wait for 5 seconds
    Then User can see Supplier in Search results on Discover page "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

    @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify a supplier in search results if the buyer is able to select UNSPSC options Segment Famility Class and Commodity on filter in Discover tab
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User select a Family "Live Animals" from filter dropdown
    And User select a Class "Livestock" from filter dropdown
    And User select a Commodity "Dogs" from filter dropdown
    And User click on Search button
    Then Wait for 5 seconds
    When User enter Supplier Name in search input field on Discover page
    Then Wait for 5 seconds
    Then User can see Supplier in Search results on Discover page "true"
    When User click on Clear All link on Connected Suppliers page
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @UNSPSCFilter @Buyer @QuickSanity
  Scenario: Verify Reset Filters button in filter by on Discover page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    When User select a Segment "Live Plant" from filter dropdown
    And User click on Reset Filters button
    And Wait for 5 seconds
    And User click on filter close Icon
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @UNSPSCFilter @Buyer
  Scenario: Verify if the buyer is able to see and click Reset Filter in filter by on Discoverable Suppliers page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When User click on Discoverable Suppliers tab
    Then User can see a title on Discoverable Suppliers page "Discoverable Suppliers"
    Then Click "Filter by" button
    Then Show UNSPSC in filter column "true"
    Then Verify UNSPSC dropdown in filter is clickable "true"
    When User click on UNSPSC in filter on Discover page
    Then User can able to see UNSPSC Code option Segment "true"
    And User able to see Reset Filters button "true"
    And Reset Filter button is clickable "true"
    Then User click on filter close Icon
    Then Logout from the system