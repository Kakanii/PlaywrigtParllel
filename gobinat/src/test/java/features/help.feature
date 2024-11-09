Feature: Buyer/Supplier Help
#Helpfeature
# @HelpBuyer @HelpSupplier

Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @HelpBuyer @Buyer @Helpfeature @CDCI @Sanity @QuickSanity @QuickCheck
  Scenario: Verify Title on Help page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Visibility of Title on Help Page "Support Center"
    And  Logout from the system

  @Smoke @Supplier @HelpSupplier @Helpfeature @CDCI @Sanity @QuickSanity @QuickCheck
  Scenario: Verify Title on Help page
    When Enter supplier email in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Nav link
    Then Visibility of Title on Help Page "Support Center"
    And Logout from the system

  @Smoke @HelpBuyer @Buyer @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Contact us/get help button on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Contact Us Get Help Title Visibility "Contact Us / Get Help"
    And Click on Contact Us Get Help button
    Then Logout from the system

  @Smoke @Supplier @HelpSupplier @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Contact us/get help button on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Nav link
    Then Contact Us Get Help Title Visibility "Contact Us / Get Help"
    Then Click on Contact Us Get Help button
    And Logout from the system

  @Smoke @HelpBuyer @Buyer @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Privacy Policy button on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Privacy Policy button Visibility "Privacy Policy"
    And Click on Privacy Policy button
    #Then Validate Privacy policy page Title "True"
    Then Logout from the system

  @Smoke @Supplier @HelpSupplier @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Privacy Policy button on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Nav link
    Then Privacy Policy button Visibility "Privacy Policy"
    And Click on Privacy Policy button
    Then Validate Privacy policy page Title "True"
    And Logout from the system

  @Smoke @Buyer @HelpBuyer @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Terms of Use button on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Terms of Use button Visibility "Terms of Use"
    And Click on Terms of Use button
    Then Validate Terms of Use page Title for Buyer "NETWORK AGREEMENT"
    And Logout from the system

  @Smoke @Supplier @HelpSupplier @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Terms of Use button on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Nav link
    Then Terms of Use button Visibility "Terms of Use"
    And Click on Terms of Use button
    Then Validate Terms of Use page Title for Supplier "True"
    And Logout from the system

  @Smoke @Buyer @HelpBuyer @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Third Party Licenses button on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Help Tab
    Then Third Party Licenses Visibility "Third Party Licenses"
    #Then Click on Toggle button
    And Click on Third Party Licenses button
    Then Validate Third Party Licenses page Title "True"
    And Logout from the system

  @Smoke @Supplier @HelpSupplier @Helpfeature @CDCI @QuickSanity @QuickCheck
  Scenario: Verify Third Party Licenses button on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Help Tab
    Then Third Party Licenses Visibility "Third Party Licenses"
    #Then Click on Toggle button
    Then Click on Third Party Licenses button
    Then Validate Third Party Licenses page Title "True"
    And Logout from the system

  @Regression @Regression @HelpBuyer @Buyer @Helpfeature @CDCI
  Scenario: Verify FAQ Section on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Check the visibility of FAQ Title on Help Page "Frequently Asked Questions"
    And Check the visibility of Seach FAQ text Box
    #Then Check the visibility of Sub Section Blockchain in FAQ section "Blockchain"
    Then Check the visibility of Sub Section General in FAQ section "General"
    Then Check the visibility of Sub Section Languages in FAQ section "Languages"
    #Then Check the visibility of Sub Section Questionnaires in FAQ section "Questionnaires"
    Then Check the visibility of Sub Section Support in FAQ section "Support"
    #Then Check the visibility of Sub Section User Guides in FAQ section "User Guides"
    Then Check the visibility of Sub Section Userid and Passwords in FAQ section "User ID and Password"
    Then Check the visibility of Sub Section Pricing in FAQ section "Pricing"
    Then Check the visibility of Sub Section Email Settings in FAQ section "Email Settings"
    #Then Check the visibility of Sub Section Supplier Invitation in FAQ section "Supplier Invitation"
    And Logout from the system

  @Regression @Regression @HelpSupplier @Supplier @Helpfeature @CDCI
  Scenario: Verify FAQ Section on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check the visibility of FAQ Title on Help Page "Frequently Asked Questions"
    Then Check the visibility of Seach FAQ text Box
    #Then Check the visibility of Sub Section Blockchain in FAQ section "Blockchain"
    Then Check the visibility of Sub Section General in FAQ section "General"
    Then Check the visibility of Sub Section Languages in FAQ section "Languages"
    #Then Check the visibility of Sub Section Questionnaires in FAQ section "Questionnaires"
    Then Check the visibility of Sub Section Support in FAQ section "Support"
    #Then Check the visibility of Sub Section User Guides in FAQ section "User Guides"
    Then Check the visibility of Sub Section Userid and Passwords in FAQ section "User ID and Password"
    #Then Check the visibility of Sub Section Documents in FAQ section "Documents"
    Then Check the visibility of Sub Section Pricing in FAQ section "Pricing"
    Then Check the visibility of Sub Section Email Settings in FAQ section "Email Settings"
    And Logout from the system

  @Regression @HelpBuyer @Buyer @Helpfeature 
  Scenario: Verify Buyer T&C Lookup Section on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field  
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Check the Visibility of Buyer T and C Lookup button "Buyer T&C Lookup"
    #Then Check if Buyer T and C Lookup button is clickable and Validate title on new TAB Buyer T and C "To Supplier Company:"
    And Logout from the system

  @Regression @HelpBuyer @Buyer @Helpfeature
  Scenario: Verify Contact Support Section on Help page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on Help Tab
    Then Check the Visibility of Not finding the help you need title "Not finding the help you need?"
    Then Check the Contact Support button Visiblity "Contact Support"
    Then Check if Contact Support button is clickable
    And Logout from the system

  @Regression @HelpSupplier @Supplier @Helpfeature
  Scenario: Verify Contact Support Section on Help page
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    And Click on Help Nav link
    Then Check the Visibility of Not finding the help you need title "Not finding the help you need?"
    Then Check the Contact Support button Visiblity "Contact Support"
    Then Check if Contact Support button is clickable
    And Logout from the system

  #@Regression @HelpSupplier @Supplier @Helpfeature
  Scenario: Verify Buyer T&C Lookup Pop-up  on Help page for Supplier
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check the Visibility of Buyer T and C Lookup button "Buyer T&C Lookup"
    Then Check if Buyer T and C Lookup button is clickable
    Then Switch to the active window
    Then Check the Title on Buyer T and C look up pop up "Buyer T&C Lookup"
    Then Check Close icon Availability "x"
    Then Check Cancel button Availability "Cancel"
    Then Check View button Availability "View"
    Then Click on Cancel button on Buyer TandC lookup popup
    Then Switch to the parent window
    Then Logout from the system

  #@Smoke @Regression @HelpSupplier @Supplier @Helpfeature 
  Scenario: Verify Buyers Drop-down Options available in Buyer T&C Lookup Pop-up on Help page for Supplier
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check if Buyer T and C Lookup button is clickable
    ##Then Switch to the active window
    Then Check Select Buyers Dropdown Title Buyers TandC Popup "Please select from your list of Buyers to view the Terms of Use"
    Then Check Available Buyers in the popup and print the List of Buyers
    Then Click on Cancel button on Buyer TandC lookup popup
    Then Switch to the parent window
    Then Logout from the system

  #@Regression @HelpSupplier @Supplier @Helpfeature
  Scenario: Verify Buyers Drop-down Options available in Buyer T&C Lookup Pop-up on Help page for Supplier
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Help Nav link
    Then Check if Buyer T and C Lookup button is clickable
    Then Select First buyer from the Dropdown on Buyers T and C Popup and click on View
    Then Validate Buyer Title on T and C page "To Supplier Company:"
    Then Logout from the system
