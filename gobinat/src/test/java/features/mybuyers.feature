Feature: My Buyers on Supplier page

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

    
   @Smoke @MyBuyers @Supplier @TYSFunctionality
    Scenario: Verify My Buyers Company Details on My Buyers Page
    Then My Buyers Tab Clickable On Dashboard page
    Then Show Buyer Company Name on My Buyers page "International Business Machines Corporation-IBM"
    Then Show Buyer Company Status on My Buyers page "Accepted Invite"
    Then Logout from the system