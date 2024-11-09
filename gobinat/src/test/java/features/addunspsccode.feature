Feature: Add UNSPSC Codes and Search

  #AddUNSPSCCode
 Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
   When Enter EmailAdress in Email Address field "sanitysupplier@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login

  # Then Show the title "My Dashboard" on the Dashboard page
  #Then Click on "Company" Down arrow on Dashboard
  @Regression @AddUNSPSCCode @CDCI @Sanity @AddUNSPSCCode @QuickSanity @QuickCheck
  Scenario: Verify Add UNSPSC Code tooltips
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Show "Search by Code or Keywords (Class or Commodity)" tooltip "Search by Code or Keywords and click on enter to view the search results" in Assign a Contact modal
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer
  Scenario: Verify Add UNSPSC Code button status in Basic Information
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Add UNSPSC Code button visibility in Basic Information "true"
    Then Add UNSPSC Code button clickable in Basic Information "true"
    When Click on Add UNSPSC Code button
    Then Click "Cancel" button
    #Then Close UNSPSC Code modal
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer
  Scenario: Verify Add UNSPSC Code button tooltip visibility in Basic Information
    When Click "Basic Information" tab
    Then Scroll Down the page
    And Add UNSPSC Code button visibility in Basic Information "true"
    Then Show "UNSPSC" tooltip "The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code)"
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer
  Scenario: Verify Back button visibility in Basic Information
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Add UNSPSC Code button visibility in Basic Information "true"
    And Click on Add UNSPSC Code button
    Then Wait for 3 seconds
    Then Back button visibility in Basic Information "true"
    And Click on Back button
    Then Logout from the system

  @Regression @AddUNSPSCCode @Buyer @QuickSanity
  Scenario: Verify Back button clickable in Basic Information
    When Click "Basic Information" tab
    And Scroll Down the page
    When Click on Add UNSPSC Code button
    And Wait for 3 seconds
    Then Click on Back button
    And Logout from the system

  @Smoke @AddUNSPSCCode @Buyer @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify Add All product codes status in Add UNSPSC Code modal
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter product code "10101502" in search by code field
    Then Switch to the active window
    When Click Select All option
    Then Click "Add" button
    And Scroll Down the page
    Then Click on Confirm button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click on Add UNSPSC Code button
    Then Search "10101502" in the selected codes
    Then Click on the "10101502" code
    And Click on Delete button
    Then Click on Confirm button
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer @QuickSanity
  Scenario: Verify unselect product codes status in Add UNSPSC Code modal
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter product code "10101508" in search by code field
    Then Switch to the active window
    Then Click Select All option
    Then Click "Add" button
    And Scroll Down the page
    When Click "Select All" button
    Then Unselect any of added product code
    Then Click on Confirm button
    And Logout from the system

  @Smoke @Regression @AddUNSPSCCode @Buyer @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify added product codes status in Basic Information
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter product code "10101507" in search by code field
    Then Switch to the active window
    When Click Select All option
    Then Click "Add" button
    And Scroll Down the page
    Then Click on Confirm button
    And Wait for 3 seconds
    Then Switch to the active window
    And Logout from the system

  @Smoke @AddUNSPSCCode @Buyer @CDCI @Sanity @SanitySuiteCheck @SanityCheck
  Scenario: Verify Search by keyword clear button status in Add UNSPSC Code modal
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Search by keyword field visibility in Add product codes modal "true"
    Then Search by keyword field clickable in Add product codes modal "true"
    Then Enter "Paper yarn fabric" in search by keyword field
    When Click Select All option
    Then Click "Add" button
    And Scroll Down the page
    Then Click on Confirm button
    And Wait for 5 seconds
    Then Switch to the active window
    Then Click on Add UNSPSC Code button
    Then Search "Paper yarn fabric" in the selected codes
    When Click on the "11162118" code
    And Click on Delete button
    Then Click on Confirm button
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer
  Scenario: Verify Search Results button status in Add UNSPSC Code modal
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter "paper" in search by keyword field
    #Then Click on Search button
    Then Search Results dropdown visibility in Add UNSPSC code modal "true"
    Then Search Results dropdown clickable in Add UNSPSC code modal "true"
    Then Select "10215804" from search results
    When Click "Add" button
    #Then Click on Cancel button
    And Logout from the system

  @Smoke @AddUNSPSCCode @Buyer @CDCI @Sanity @QuickSanity
  Scenario: Verify search results are unselected in Add UNSPSC Code modal
    Then Wait 3 seconds
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Search by keyword field visibility in Add product codes modal "true"
    Then Search by keyword field clickable in Add product codes modal "true"
    Then Enter "Paper yarn fabric" in search by keyword field
    When Click Select All option
    Then Click "Add" button
    And Scroll Down the page
    Then Click on Confirm button
    And Wait for 5 seconds
    Then Switch to the active window
    Then Click on Add UNSPSC Code button
    Then Search "Paper yarn fabric" in the selected codes
    Then Click on the "11162118" code
    When Click on Delete button
    Then Click on Confirm button
    And Logout from the system

  @Regression @AddUNSPSCCode @Buyer
  Scenario: Verify product codes are added in Basic Information
    #Then Click on Profile tab
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Enter "paper" in search by keyword field
    #Then Click on Search button
    #Then Click on search results button
    Then Select "10215804" from search results
    And Wait for 5 seconds
    When Click "Add" button
    Then Click on Confirm button
    And Logout from the system
