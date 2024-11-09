Feature: Data Validation

  #Data Validation
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Datavalidation @Smoke @QuickSanity @SanityCheck
  Scenario: verify if buyer able to see "Cult Kick PVT LTD" Supplier on connected supplier first page
    Then Enter buyer emailid in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    Then verify "Cult Kick PVT LTD" supplier on connected supplier page
    Then Wait for 3 seconds
    #Then verify "Approval test" supplier on connected supplier page
    Then Wait for 3 seconds
    Then Logout from the system

  @Datavalidation @Smoke @QuickSanity @SanityCheck
  Scenario: verify if buyer able to see "Kangaroo  Tree 255 " Supplier on connected supplier Second page
    Then Enter buyer emailid in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Scroll Down the page
    Then click on Next page
    Then Wait for 3 seconds
    And Scroll Down until "700" dimension on the page
    Then Wait for 5 seconds
    Then verify "Kangaroo  Tree 255" supplier on connected supplier page
    Then Wait for 3 seconds
    Then verify "Kangaroo  Tree 176" supplier on connected supplier page
    Then Wait for 3 seconds
    Then Logout from the system
