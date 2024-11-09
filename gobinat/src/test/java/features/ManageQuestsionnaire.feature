@REQ_SLYN-7238 @SLYN-9483 @QA_20.3_Production_Release
Feature: Manage Questionnaire

  #ManageQuestionnaire
  # Run these tests using default config creds
  @Regression @TEST_SLYN-8028 @REQ_SLYN-7239 @TESTSET_SLYN-5481 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify title on Add a Questionnaire Group modal
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Show title on Add a Questionnaire Group modal "Add a Questionnaire Group"
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Logout from the system

  @Regression @TEST_SLYN-8022 @REQ_SLYN-7239 @TESTSET_SLYN-5481 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Manage Questionnaire Groups tab visibility on Manage Questionnaire page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Show All Questionnaires title on Manage Questionnaires Page "All Questionnaires"
    Then Show Manage Questionnaire Groups tab "true"
    Then Logout from the system

  @Regression @TEST_SLYN-9692 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Manage Questionnaire Groups tab status on Manage Questionnaire page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Manage Questionnaire Groups tab clickable "true"
    Then Logout from the system

  @Regression @TEST_SLYN-9698 @TESTSET_SLYN-9477 @TEST_SLYN-8024 @REQ_SLYN-7239 @TESTSET_SLYN-5481 @ManageQuestionnaire @Buyer
  Scenario: Verify Add a Questionnaire Group button visibility on Manage Questionnaire Groups tab
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Show Add a Questionnaire Group button "true"
    Then Logout from the system

  @Regression @TEST_SLYN-9699 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Add a Questionnaire Group button status on Manage Questionnaire Groups tab
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Add a Questionnaire Group button clickable "true"
    Then Logout from the system

  @Regression @TEST_SLYN-9700 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Close button visibility on Add a Questionnaire Group modal
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Show Cancel button on Add a Questionnaire Group Modal "true"
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Logout from the system

  @Regression @TEST_SLYN-9701 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Close button status on Add a Questionnaire Group modal
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Show Cancel button clickable on Add a Questionnaire Group Modal "true"
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Logout from the system

  @Regression @TEST_SLYN-9745 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify the message on Manage Questionnaire Groups
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Show the message on Manage Questionnaire Groups "This screen allows you to manage the questionnaire groups and tag them to a risk level category (Low, Medium, High etc). They can create, update or remove a questionnaire group. Also, they can make one questionnaire group as the default."
    Then Logout from the system

  @Regression @TEST_SLYN-9747 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify the message on Manage Questionnaire Groups after click on Cancel button on Add a Questionnaire Groups
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Show the message on Manage Questionnaire Groups "This screen allows you to manage the questionnaire groups and tag them to a risk level category (Low, Medium, High etc). They can create, update or remove a questionnaire group. Also, they can make one questionnaire group as the default."
    Then Logout from the system

  @Regression @TEST_SLYN-9748 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Save Questionnaire Group button visibility on Add a Questionnaire Group modal
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Show Save Questionnaire Group button on Add a Questionnaire Group Modal "true"
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Logout from the system

  @Regression @TEST_SLYN-9749 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify Save Questionnaire Group button status on Add a Questionnaire Group modal
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Show Save Questionnaire Group button clickable on Add a Questionnaire Group Modal "true"
    Then Click on Cancel button on Add a Quesitonnaire Group modal
    Then Logout from the system

  @Regression @Smoke @TEST_SLYN-8452 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer @CDCI
  Scenario: Verify if Actions dropdown option is available for all added Questionnaire group records.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8452 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if you are able to delete the Questionnaire Group
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Smoke @CDCI @TEST_SLYN-8451 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer @TYSFunctionality
  Scenario: Verify if Buyer is able to update existing Questionnaire group by selecting Update option under Actions dropdown.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Update option in the Action drop down
    Then Switch to the active window
    Then Enter the value in the Questionnaire Group Name for update
    Then Click on Update button on the Update Questionnaire Group
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8453 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to Mark a Questionnaire group as a default questionnaire group by selecting Mark as Default option under Actions dropdown.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Make it default option in the Action drop down
    Then Switch to the active window
    Then Click on Update button on the Update Questionnaire Group
    Then Switch to the parent window
    Then Click Action button on the High Risk
    Then Select the Make it default option in the Action drop down
    Then Switch to the active window
    Then Click on Update button on the Update Questionnaire Group
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Regression @TEST_SLYN-8454 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if toast message while deleting the mapped questionnaire
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Click Action drop down present on "Automationquestionnaire" risk
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then verify the toast message "Existing questionnaires are mapped to this questionnaire group, please remap before delete" when trying to delete mapped questionnaire
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8448 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if options(Update/ Remove/ Mark as Default) are available under Actions dropdown option for all added Questionnaire group records
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Click Action drop down present for added Questionnaire
    Then Show Update option in the Action drop down "true"
    Then Show Remove option in the Action drop down "true"
    Then Show Mark as default option in the Action drop down "true"
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Regression @TEST_SLYN-8442 @REQ_SLYN-7239 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Actions dropdown option is available for all added Questionnaire group records
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire Groups tab
    Then Click on Add a Questionnaire Group button
    Then Switch to the active window
    Then Enter value at Add a Questionnaire Group modal
    Then Click on save Questionnaire Group button
    Then Switch to the parent window
    Then Show Action drop down present for added Questionnaire "true"
    Then Click Action drop down present for added Questionnaire
    Then Select the Remove option in the Action drop down
    Then Switch to the active window
    Then Click in Delete button on the Delete Questionnaire Group
    Then Logout from the system

  @Regression @TEST_SLYN-8589 @REQ_SLYN-7241 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is provided with a dropdown option to select a questionnaire group in the Invite Supplier modal step 2
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    #Then Click on the Clear All Link on Assign Questionnaires window
    #Then Select the "High Risk" in Dropdown
    Then Show Question group drop down present on Invite supplier step two page "true"
    Then Click on Close button on Invite supplier step two page
    Then Logout from the system

  @Regression @TEST_SLYN-8591 @REQ_SLYN-7241 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if a Questionnarie group is selected by default in the invite modal during invite process which is marked as Default in Manage Questinnaire group page.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automationquestionnaire" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Show the "Import" Questionnaire is populated "true"
    Then Show the "Trade" Questionnaire is populated "true"
    #Then Show High Rsk Question group selected in the drop down present on Invite supplier step two page "true"
    # Then Click on Close button on Invite supplier step two page
    Then Logout from the system

  @Regression @TEST_SLYN-8592 @REQ_SLYN-7241 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if the Questionnaire associated with the Questionnaire group is populated upon selecting a questionnaire group on Step 2 of invite modal.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automationquestionnaire" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Show the "Import" Questionnaire is populated "true"
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Deselect all QGs from the Questinnaire Group
    #Then Select the "" Questionnaire group from the drop down
    #Then Click on Close button on Invite supplier step two page
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8594 @TEST_SLYN-8593 @REQ_SLYN-7241 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to select multiple questionnaire groups in the invite modal step 2
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automationquestionnaire" in Dropdown
    Then Select the "Automation" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Show the "Import" Questionnaire is populated "true"
    Then Show the "Anti" Questionnaire is populated "true"
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system

  # Not showing the group on the record
  @Regression @Smoke @TEST_SLYN-8595 @REQ_SLYN-7241 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if the Questionnaire associated with the Questionnaire group is assigned to supplier when the invite is sent and is visible in the reading pane.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automationquestionnaire" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Show the "Import" Questionnaire is populated "true"
    #Then Show the "Anti" Questionnaire is populated "true"
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then Verify the Status as "Automationquestionnaire"
    #Then verify the Supplier Questinnaire group "High Risk, Low Risk"
    Then Switch to the parent window
    Then Logout from the system

  #feature not exists now
  @Regression @TEST_SLYN-8601 @REQ_SLYN-7243 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify is a new filter "Filter by supplier Question group" is available on My Supplier page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then verify the visibility of the filter by Supplier Questionnaire Group "true"
    Then Logout from the system

  #feature not exists now
  @Regression @TEST_SLYN-8602 @REQ_SLYN-7243 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify is a new Column Supplier group is available on My Supplier page along with Company-Name , Status, Last updated.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    # Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then verify the visibility of the column Supplier Questionnaire Group "true"
    Then Logout from the system

  #feature not exists now
  @Regression @TEST_SLYN-8604 @REQ_SLYN-7243 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to select a QG as a filter by supplier group filter on My supplier page and results are populated based on the filter.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the High risk option in the Supplier Questionnaire Group filter
    Then Click on the Cancel button on the supplier group filter drop down
    Then Logout from the system

  #feature not exists
  @Regression @TEST_SLYN-8605 @REQ_SLYN-7243 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify upon clearing Supplier Group filter default results with latest record on the top is displayed on My Supplier page
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the High risk option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Switch to the active window
    Then Scroll the page
    Then Click on the Clear the Filter
    Then Switch to the parent window
    Then Logout from the system

  #No Supplier Questionnaire group for pending invites
  @Regression @Smoke @TEST_SLYN-8607 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer has the ability to add a Questionnaire Group for a Supplier from Questionnaire Group selection option in the reading pane
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Ready For Review"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Ready For Review"
    Then Click on the Search by supplier for "Ready For Review"
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Automationquestionnaire" value from dropdown
    #T#hen Select the "Automationquestionnaire" Questionnaire group from the drop down in reading panel
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Automationquestionnaire"
    Then Logout from the system

  # No Supplier Questionnaire group for pending invites
  @Regression @TEST_SLYN-8609 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is asked for a confirmation pop-up to update Questionnaire while editing Supplier Group in the reading pane or Full screen view
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign questionnaire to "Automation" QG and "default" QG
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Automationquestionnaire" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then Switch to the active window
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the toast message on Update Questionnaire Assignment "true"
    Then Switch to the parent window
    Then Logout from the system

  Scenario: Verify if able to see the rest groups of the questionnaire after clicking on the small number as a pill
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on Manage Questionnaire Groups tab
    Then Wait for 5 seconds
    Then Get default questionnaire group
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Wait for 5 seconds
    Then Assign questionnaire to "Automation" QG and "default" QG
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Show "default" QG and Questionnaire of that QG in the group table
    Then Click on small number beside questionnaire of "default" QG
    Then Show "Automation" field on tooltip when hover on small number
    Then Wait for 3 seconds
    Then Click "Manage Questionnaires" tab
    Then Wait for 5 seconds
    Then Remove questionnaire just added in "default" group
    Then Wait for 3 seconds
    Then Click on Update button on Manage Questionnaires
    Then Switch to the new window
    Then Click on Update button confirm
    Then Verify toast message "Default questionnaires saved." successfully is shown
    Then Wait for 5 seconds
    Then Logout from the system

  # No Supplier Questionnaire group for pending invites
  @Regression @Smoke @TEST_SLYN-8610 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Existing or already assigned Questionnaire and its answers are not removed while Editing Suppiler Group from the reading pane or Full screen view
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Canada" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    Then Click on close icon for create rule
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Automationquestionnaire" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then Switch to the active window
    Then click on Yes button on the Update Questionnaire Assignment
    #Then verify the toast message on Update Questionnaire Assignment "true"
    Then Switch to the parent window
    Then verify the filtered options as "Automationquestionnaire"
    #Then Verify if High Risk existing Questionnaire group present "true"
    Then Verify "Anti-Bribery, Anti-Corruption" questionnaire label visible under "Questionnaire"
    Then Logout from the system

  #When Click on Add Approvals button on Configure Approvals page
  @Regression @Smoke @TEST_SLYN-8611 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if new Questionnaire is assigned based on updated Supplier Group to the supplier on My Supplier page, Supplier reading pane or  Supplier full screen view
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Canada" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    Then verify the filtered options as "Automation"
    Then Click on Questionnaire Group on profile screen
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Select "Automationquestionnaire" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Automationquestionnaire"
    Then Logout from the system

  @Regression @Smoke @TEST_SLYN-8608 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire
  Scenario: Verify if Buyer has the ability to Edit already added Questionnaire Group for a Supplier from Questionnaire Group selection option in the reading pane or Full screen view
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Canada" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Automationquestionnaire" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Automationquestionnaire"
    Then Logout from the system

  # No Supplier Questionnaire group for pending invites
  @Regression @Smoke @TEST_SLYN-8612 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to Edit Supplier Group for a supplier with status Pending on My Suppliers page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Pending Invites"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Pending Invites"
    Then Click on the Search by supplier for "Pending Invites"
    #When Click on Go to details button on Supplier Synopsis view page
    # And Wait for 5 seconds
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Depandant" value from dropdown
    #T#hen Select the "Automationquestionnaire" Questionnaire group from the drop down in reading panel
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Depandant"
    Then Logout from the system

  #Then verify the toast message on Update Questionnaire Assignment "true"
  @Regression @Smoke @CDCI @TEST_SLYN-8614 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to Edit Supplier Group for a supplier with status RFR on My Suppliers page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Ready For Review"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Ready For Review"
    Then Click on the Search by supplier for "Ready For Review"
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Depandant" value from dropdown
    #T#hen Select the "Automationquestionnaire" Questionnaire group from the drop down in reading panel
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Depandant"
    Then Logout from the system

  @Regression @Smoke @TEST_SLYN-8608 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire
  Scenario: Verify if Buyer has the ability to Edit(remove and update) already added Questionnaire Group for a Supplier from Questionnaire Group selection option in the reading pane or Full screen view
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Canada" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
   # Then Click on "downshift-0-toggle-button" button on AR details screen
   Then Click on Questionnaire Group on profile screen
    Then Select "Automationquestionnaire" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Automationquestionnaire"
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    #    Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on close icon for create rule
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8613 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to Edit Supplier Group for a supplier with status Accepted on My Suppliers page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Accepted Invites"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Accepted Invites"
    Then Click on the Search by supplier for "Accepted Invites"
    #When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Depandant" value from dropdown
    #T#hen Select the "Automationquestionnaire" Questionnaire group from the drop down in reading panel
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Depandant"
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8616 @REQ_SLYN-7243 @REQ_SLYN-7244 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to Edit Supplier Group for a supplier with status Onboarded on My Suppliers page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Onboarded"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Onboarded"
    Then Click on the Search by supplier for "Onboarded"
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #clicking on questionnaire grp
    # Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Depandant" value from dropdown
    #T#hen Select the "Automationquestionnaire" Questionnaire group from the drop down in reading panel
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then click on Yes button on the Update Questionnaire Assignment
    Then verify the filtered options as "Depandant"
    Then Logout from the system

  #Then("Click on close icon for create rule")
  @Regression @Smoke @CDCI @TEST_SLYN-8518 @REQ_SLYN-7240 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer sees and option to add and Select Questionnaire Group with Dropdown options in Default Questionnaire section under manage questionnaire page
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on manage Quesitonnaire Group dropdown modal
    Then Select "High Risk" value from dropdown
    Then Click on Update button on the Default Questionnaires
    Then Switch to the active window
    Then Click on the Update button on the Modal
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8527 @REQ_SLYN-7240 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able associate a Questionnaire to Questionnaire Group by selecting 1 Questionnaire Group from select Questionnaire group drop-down.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on manage Quesitonnaire Group dropdown modal
    Then Select "High Risk" value from dropdown
    Then Click on Update button on the Default Questionnaires
    Then Switch to the active window
    Then Click on the Update button on the Modal
    Then Logout from the system

  @Regression @Smoke @CDCI @TEST_SLYN-8534 @REQ_SLYN-7240 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able associate a Questionnaire to multiple Questionnaire Groups by selecting 1 or more available Questionnaire Group from select Questionnaire group drop-down.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on manage Quesitonnaire Group dropdown modal
    Then Select "forautomation" value from dropdown
    Then Select "High Risk" value from dropdown
    Then Click on Update button on the Default Questionnaires
    Then Switch to the active window
    Then Click on the Update button on the Modal
    Then Logout from the system

  @Regression @Smoke @CDCI @ManageQuestionnaire @Buyer
  Scenario: Verify if Buyer is able to dis-associate questionnaire groups that were assocaited by selecting "X" to associated questionnaire group
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on manage Quesitonnaire Group dropdown modal
    Then Select "forautomation" value from dropdown
    Then Click on forautomation Questionnaire group cancel icon at Anti-Bribery, Anti-Corruption default questionnaire
    Then Scroll the page
    Then Click on Update button on the Default Questionnaires
    Then Switch to the active window
    Then Click on the Update button on the Modal
    #Then verify the toast message on Update Default Questionnaires "true"
    Then Switch to the parent window
    Then Logout from the system

  @Regression @TEST_SLYN-8525 @REQ_SLYN-7240 @TESTSET_SLYN-9477 @ManageQuestionnaire @Buyer
  Scenario: Verify if Select Questionnaire Group dropdown contains values that were only added in Manage Questionnaire Group section and should not contain any other values.
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then verify buyer is able to view the questionnaire group pill as "Automationquestionnaire" on "Manage Questionnaires"
    #Then Click on the Drop down at Anti-Bribery, Anti-Corruption
    #Then Switch to the parent window
    Then Logout from the system

  @Regression @ManageQuestionnaire @Buyer
  Scenario: Verify if you are able to clear and select the questionnaire  group while invite supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automationquestionnaire" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @CDCI @ManageQuestionnaire @Suppiler
  Scenario: Verify if you are able to accept the questionnaires in the pending tab
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Show "Password" field Tooltip description "Password to be used to log into Trust Your Supplier. This is a mandatory field."
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Show "Confirm Password" Tooltip description "Re-enter password to confirm. This is a mandatory field."
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    #Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    #Then Enter value at text area for Question
    #Then Select Country for Company Operations Second question
    #Then Click on Yes for Company Operations Third question
    #Then Click "Yes" for Question "3"
    #Then Click "Yes" for Question "4"
    # Then Click on No for Company Operations Fourth question
    #Then Click on No for Company Operations Fivth question
    #Then Switch to the active window
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Click on the publish button for publishing
    #Then Close toast message
    #Then Switch to the parent window
    Then Logout from the system

  @Smoke @CDCI @ManageQuestionnaire @Suppiler
  Scenario: Verify if there are accepted questionnaire in the publish tab
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Show "Password" field Tooltip description "Password to be used to log into Trust Your Supplier. This is a mandatory field."
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Show "Confirm Password" Tooltip description "Re-enter password to confirm. This is a mandatory field."
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Click on published tab at Assigned questionaire
    Then Verify if "Anti-Bribery, Anti-Corruption" questionnaire present in the published tab
    # Then Verify if "Trade Compliance" questionnaire present in the published tab
    Then Logout from the system

  @Regression @ManageQuestionnaire @Suppiler
  Scenario: Verify the visibility and status of the buttons after answering the questionaire
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Show "Password" field Tooltip description "Password to be used to log into Trust Your Supplier. This is a mandatory field."
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Show "Confirm Password" Tooltip description "Re-enter password to confirm. This is a mandatory field."
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Check "Save" button visibility in pending questionaire "true"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "true"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "true"
    Then Check "Save" button clickable in pending questionaire "true"
    Then Check "Close" button clickable in pending questionaire "true"
    Then Check "Save & Close" button clickable in pending questionaire "true"
    Then Check "Publish Questionnaire" button clickable in pending questionaire "true"
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @CDCI @ManageQuestionnaire @Suppiler
  Scenario: Verify if there questionnaire is Downloading in the publish tab
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Show "Password" field Tooltip description "Password to be used to log into Trust Your Supplier. This is a mandatory field."
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Show "Confirm Password" Tooltip description "Re-enter password to confirm. This is a mandatory field."
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Wait for 3 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 5 seconds
    #Then Click on button "Publish" for questionare
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Verify if "Anti-Bribery, Anti-Corruption" download questionnaire clickable
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ManageQuestionnaire @Buyer @CDCI
  Scenario: Verify if Buyer is able to add, update and remove the questionnaires
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaires tab
    Then Click on Manage Questionnaire tab on Manage Questionnaires page
    Then Perform the Add update remove operatios on "Conflict Minerals" questionnaire
    Then Logout from the system
