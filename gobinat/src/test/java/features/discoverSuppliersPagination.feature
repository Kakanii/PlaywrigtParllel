Feature: Discover Supplier DiscoverSuppliersPagination as Buyer

  #Discover
  #@DiscoverSuppliersPagination
Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @Dashboard @Buyer @BuyerDashboard @Sanity @DiscoverSuppliersPagination @SanitySuiteCheck @SanityCheck
  Scenario: Verify title on Discoverable Supplier page for Buyer
    When Enter Redhat buyer in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Click on Discoverable Supplier on Dashboard page "true"
    Then Wait for 5 seconds
    And Click on TYS Discover tab
    Then Show title on Discoverable Supplier page "Discoverable Suppliers"
    And Logout from the system

  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @TYSFunctionality
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    #And Click on TYS Discover tab
    And Change row per page to twenty
    And Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    When Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 40
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 40
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @CDCI @QuickSanity
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 40
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to forty
    And Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    When Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 60
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to sixty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 60
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to sixty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @CDCI @QuickSanity
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 60
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to sixty
    And Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    When Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 80
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    Then Change row per page to eighty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 80
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    Then Change row per page to eighty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @CDCI @QuickSanity
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 80
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    And Change row per page to eighty
    And Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    When Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 100
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    Then Change row per page to hundred
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @DiscoverSuppliersPagination @Discover @Buyer
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 100
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    Then Change row per page to hundred
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @DiscoverSuppliersPagination @Discover @Buyer @CDCI @QuickSanity
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 100
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on "Suppliers" Down arrow on Dashboard
    And Click on Discover tab
    And Click on TYS Discover tab
    Then Change row per page to hundred
    When Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    When Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system