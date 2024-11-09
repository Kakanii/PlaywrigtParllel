Feature: Buyer Login Functionality

  # BuyerLogin
  Background: Start the applicaiton
    Given Start the application
    When Click on Sign In button

  @Smoke @BuyerLogin @CDCI @Sanity @QuickSanity @TestFirst
  Scenario Outline: Verify Buyer login with valid credentials
    Then Enter "<email>" in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Show Dashboard tab on Dashboard page "true"
    And Dashboard tab clickable on Dashboard page "true"
    Then Logout from the system
    Then Wait for 10 seconds

    Examples: 
      | email                         |
			|autoibmusr@mailinator.com      |
			|autogeodisusr@mailinator.com   |
			|autorrusr@mailinator.com       |
			|autogskusr@mailinator.com      |
			|autoadpusr@mailinator.com      |
			|autoaramcosusr@mailinator.com  |
			|autopearsusr@mailinator.com    |
			|autodtusr@mailinator.com       |
			|autoabusr@mailinator.com       |
			|autojbusr@mailinator.com       |
			|autoflexusr@mailinator.com     |
			|autovodausr@mailinator.com     |
			|autonokiausr@mailinator.com    |
 