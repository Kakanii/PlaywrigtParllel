Feature: Email Notifications

  #EmailOptinOptout
  #@BuyerNotificationSettings @SupplierNotificationSettings
  Background: Login as a Buyer
     Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

   @EmailOptinOptout @BuyerNotificationSettings @TYSFunctionality
  Scenario: Verify EmailOptinOptout in Buyer Notifications Settings
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Click Upon Notifications on Dashboard page
    Then Verify the visibility of "Settings" button
    Then Click on "Settings" button on notification
    #Then Show Settings tab in Notifications page "true"
    #Then Settings tab clickable in Notifications page "true"
    #Then Click on Settings in Notifications page "true"
    Then Show invite process option visibility in settings "true"
    Then Show invite process option available in settings "true"
    Then Show questionnaires and profile option visibility in settings "true"
    Then Show questionnaires and profile option available in settings "true"
    Then Show approval requests option visibility in settings "true"
    Then Show approval requests option available in settings "true"
    Then Show user management option visibility in settings "true"
    Then Show user management option available in settings "true"
    Then Logout from the system

  @EmailOptinOptout @SupplierNotificationSettings @TYSFunctionality
  Scenario: Verify EmailOptinOptout in Supplier Notifications Settings
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications in supplier Dashboard page "true"
    Then Settings tab clickable in Notifications page "true"
    Then Click on Settings in Notifications page "true"
    Then Show invite process option visibility in settings "true"
    Then Show invite process option available in settings "true"
    Then Show questionnaires and profile option visibility in settings "true"
    Then Show questionnaires and profile option available in settings "true"
    Then Show followupevents option visibility in settings "true"
    Then Show followupevents option available in settings "true"
    Then Show onboarding option visibility in settings "true"
    Then Show onboarding option available in settings "true"
    Then Show user management option visibility in settings "true"
    Then Show user management option available in settings "true"
    Then Logout from the system
