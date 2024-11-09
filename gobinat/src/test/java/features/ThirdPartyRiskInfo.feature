Feature: ThirdPartyRisk Page

#@ThirdPartyRisk 

  Background: Start the applicaiton
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Smoke @ThirdPartyRisk @thirdparty @QuickSanity
  Scenario: Verify Third Party Risk Functionality Title
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Third Party Risk Information" Page
    Then Verify the title as Third Party Risk Info page
    Then Logout from the system

    
