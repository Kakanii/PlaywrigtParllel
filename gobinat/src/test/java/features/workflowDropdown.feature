Feature: Workflow Dropdowns

  #Workflow Dropdowns
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Buyer @WorkflowDropdowns @TYSFunctionality
  Scenario: Verify As a Buyer, should not view Dependent Quetionnaires workflows dropdown on checklist questionnaire on configure workflows screen
    Then Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    And Click "Workflow" button for "Anti-Bribery, Anti-Corruption (11)" in "Checklist Questionnaires"
    And Wait for 3 seconds
    And Verify "Dependent Questionnaire" button is not displaying under "Checklist Questionnaires"

  @Buyer @WorkflowDropdowns
  Scenario: Verify As a Buyer, should see a message "You have no Checklist Questionnaires configured." on checklist questionnaire on configure workflows screen
    When Enter EmailAdress in Email Address field "ramaleelavodauat@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Checklist Questionnaires" under for "Configure Workflows"
    And Verify No checklist message "You have no Checklist Questionnaires configured."
