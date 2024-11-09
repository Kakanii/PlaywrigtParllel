Feature: Dependant Questionnaire Third Party App Config scenarios

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Thirdpartyappconfig
  Scenario: As a Buyer, I want to Verify all lables for Dependent Questionnaire of 3rd Party App Config
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 3 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    And Wait for 3 seconds
    Then Verify the page title "Settings" under Dependent Questionnaire Third party
    Then Verify the page title description "Create rules for systemic questionnaire assignment to suppliers based on app response data." under Dependent Questionnaire Third party
    #Verify buttons visible
    Then Verify "Cancel" button is visible under "Depandant questionnaire third party app config" at "2"
    And Verify "Save" button is visible under "Depandant questionnaire third party app config" at "4"
    And Verify "Expand All" label is displaying under "Depandant questionnaire third party app config" at "2"
    And Verify "Collapse All" label is displaying under "Depandant questionnaire third party app config" at "2"
    And Verify "Create Rule" button is visible under "Depandant questionnaire third party app config"
    #Verify buttons enabled
    And Verify "Cancel" button is enabled under "Depandant questionnaire third party app config" at "2"
    And Verify "Save" button is enabled under "Depandant questionnaire third party app config" at "4"
    And Verify "Expand All" label is enabled under "Depandant questionnaire third party app config" at "2"
    And Verify "Collapse All" label is enabled under "Depandant questionnaire third party app config" at "2"
    And Verify "Create Rule" button is enabled under "Depandant questionnaire third party app config"
    Then Wait for 3 seconds

  @Regression @Thirdpartyappconfig
  Scenario: As a Buyer, I want to Verify all lables for Create Rule on Dependent Questionnaire of 3rd Party App Config
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 3 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    ###label display
    Then Verify "Criteria" label is displying under "Create Rule" for "Depandant questionnaire third party app config"
    Then Verify "Threshold" label is displying under "Create Rule" for "Depandant questionnaire third party app config"
    Then Verify "Assign Dependent Questionnaire Group" label is displying under "Create Rule" for "Depandant questionnaire third party app config"
    Then Verify "Assign Dependent Questionnaire" label is displying under "Create Rule" for "Depandant questionnaire third party app config"
    ###input values display
    And Verify "Threshold" dropdown input field is displying under "Create Rule" for "1"
    And Verify "Assign Dependent Questionnaire Group" dropdown input field is displying under "Create Rule" for "2"
    #And Verify "Assign Dependent Questionnaire" dropdown input field is displying under "Create Rule" for "3"
    And Verify "Delete Configuration" label is displaying under for "Depandant questionnaire third party app config"
    Then Verify "Add More" button is visible under "Depandant questionnaire third party app config"
    ###input field enabled
    And Verify "Threshold" dropdown input field is enabled under "Create Rule" for "1"
    And Verify "Assign Dependent Questionnaire Group" dropdown input field is enabled under "Create Rule" for "2"
    #And Verify "Assign Dependent Questionnaire" dropdown input field is enabled under "Create Rule" for "3"
    And Verify "Delete Configuration" label is enabled under for "Depandant questionnaire third party app config"
    And Verify "Add More" button is enabled under "Depandant questionnaire third party app config"
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank code with Dependant Questionnaire Group with out Dependant Quetionnaire
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    And Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    And Wait for 3 seconds
    Then Click on "LexisNexis Bank Validation" div button
    And Wait for 5 seconds
    When Click on "LexisNexis Bank Validatio..." installed app button
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 15 seconds
    When Click "Dependent Questionnaire" button
    When Click on "Create Rule" button for app config
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 15 seconds
    When Click "Dependent Questionnaire" button
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Wait for 2 seconds
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank code without Dependant Questionnaire Group with Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    #When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank Key without Dependant Questionnaire Group with Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankKey" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank Number with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 3 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankNumber" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold city with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "city" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold country with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "country" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold iban with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "iban" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold routinNumber with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "routingNumber" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold swiftCode with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "swiftCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank code with Dependant Questionnaire Group with out Dependant Quetionnaire using AddMore button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Click "Add More" button
    Then Wait for 2 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankKey" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "India" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click "Confirm" button 2
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a buyer, Verify Required error message for Create rule on Dependent Questionnaire of 3rd Party App Config
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    Then Click "Save" button 4
    Then Wait for 3 seconds
    Then Verify "Required" error message for "Criteria" on app config at "1"
    Then Verify "Required" error message for "Threshold" on app config at "2"
    Then Verify "Required" error message for "Assign Dependent Questionnaire Group" on app config at "3"
    Then Verify "Required" error message for "Assign Dependent Questionnaire" on app config at "4"

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to Delete configured  Dependent Questionnaire of 3rd Party App Config with Threshold Bank code with Dependant Questionnaire Group with out Dependant Quetionnaire using Delete Congiguration button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Click "Add More" button
    Then Wait for 2 seconds
    When Select value "In" from second criteria
    Then Wait for 2 seconds
    When Select "bankKey" option for "Threshold" in Configure Dependent Questionnaire at "1" for add more at "4"
    When Select "India" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2" for add more at "5"
    Then Wait for 3 seconds
    When Click "Delete Configuration" label button under for "Depandant questionnaire third party app config"
    When Click "Yes" button
    Then Verify toast message "Configuration has been deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click "Confirm" button 2
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with multiple Threshold Bank code and Bank Key with Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 3 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 5 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "bankKey" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank code  with multiple Dependant Questionnaire Group without Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Automation" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with Threshold Bank code  with Dependant Questionnaire Group with multiple Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    #When Select "Automation" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Conflict Minerals" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system

  @Smoke @Thirdpartyappconfig @TYSFunctionality 
  Scenario: As a Buyer, I want to configure a Dependent Questionnaire of 3rd Party App Config with multiple Threshold and with multiple Dependant Questionnaire Group with multiple Dependant Quetionnaire
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Marketplace" tab
    Then Click on search feild on Market place
    Then Wait for 3 seconds
    When Enter "LexisNexis Bank Validation" in Search Market place
    Then Wait for 3 seconds
    Then Click on "LexisNexis Bank Validatio..." installed app button
    And Wait for 5 seconds
    Then Click on "App Configurations" tab on supplier notification
    And Wait for 3 seconds
    When Click "Dependent Questionnaire" button
    When Click "Create Rule" button
    Then Wait for 3 seconds
    When Select value "In" from criteria
    Then Wait for 2 seconds
    When Select "bankCode" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "bankKey" option for "Threshold" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Automation" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Conflict Minerals" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Click "Save" button 4
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    When Click "Delete All Configurations" button 2
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully." successfully is shown
    Then Logout from the system
