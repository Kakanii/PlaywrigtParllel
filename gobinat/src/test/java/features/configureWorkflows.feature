Feature: Configure Workflows

  #Configure Workflows
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to see all the lables in Configure Workflow page
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    ###labels display
    Then Verify "Configure Workflows" label is displaying under "Configure Workflows"
    And Verify "The Configure Workflow screen allows you to create rules to generate approvals and notifications or assign questionnaires based on questionnaire responses or Supplier Profile changes. Select from the tabs below to view configuration options." label is displying under "Configure Workflows" for "Configure Workflows"
    And Verify label name "Supplier Questionnaires" is displying under "Configure Workflows"
    And Verify label name "Supplier Profile" is displying under "Configure Workflows"
    And Verify label text "Questionnaire Type" is displying under "Configure Workflows"
    Then Verify "All" label is displaying under "Depandant questionnaire"
    And Verify "Buyer Specific" label is displaying under "Depandant questionnaire"
    When Click on "All" for "Depandant questionnaire"
    Then Verify "Workflow" button is diplaying for "Anti-Bribery, Anti-Corruption"
    ###label button enable
    And Verify "All" label is enabled under "Depandant questionnaire"
    And Verify "Buyer Specific" label is enabled under "Depandant questionnaire"
    And Verify "Workflow" button is enabled for "Anti-Bribery, Anti-Corruption"
    And Wait 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Wait 2 seconds
    ###labels display for Depandant questionnaire
    Then Verify "Approval Requests" button is displaying under "Workflow"
    And Verify "Dependent Questionnaire" button is displaying under "Workflow"
    ###lables enable
    And Verify "Approval Requests" button is enable under for "Workflow"
    And Verify "Dependent Questionnaire" button is enable under for "Workflow"
    #Checklist questionnaire
    When Click on label button "Checklist Questionnaires" under "Configure Workflows"
    Then Verify "Workflow" button is diplaying for "Pre Invite Assessment (9)"
    When Click on "Workflow" button for "Pre Invite Assessment (9)" in "Checklist Questionnaires"
    Then Verify "Approval Requests" button is displaying under "Workflow"
    And Wait for 3 seconds
    #Supplier profile
    When Click on label button "Supplier Profile" under "Configure Workflows"
    Then Verify label button "Edit" is displying under "Supplier Profile"
    And Verify label button "Delete" is displying under "Supplier Profile"
    And Verify label downarrow button "Edit" is displying under "Supplier Profile"
    And Logout from the system

  @Regression @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to see TYS Specific supplier questionnaires
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    Then Verify "allQuestionnaires" TYS specific questionnaire count is 37
    And Wait for 2 seconds
    And Logout from the system

  @Regression @Buyer @ConfigureWorkflows
  Scenario: Verify As a buyer I want to see Buyer specific questionnaire under Buyer Specific
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    Then Verify "IBM" Buyer specific questionnaire count is 6
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SanityCheck
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Supplier questionnaires
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Enter "test" as description for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    When Click on "Assign role" dropdown button for approval requests role "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Select "Administrator" as assiging approval requests role for "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 5 seconds
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    #Then Verify "2 Approval parameters configured " is displaying under "Ethics and Compliance" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance" for Configure Workflows
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality  @SanityCheck
  Scenario: Verify As a Buyer, I should be able to Configure Dependent questionnaires for Supplier questionnaires
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click "Suppliers" tab
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click "Workflow" for "Government Relations" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 15 seconds
    When Click on "Create Rule" button for dependent questionnaire "Does a government entity own a controlling interest in your company or are any of your company"
    Then Wait for 20 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    And Wait for 3 seconds
    #And Navigate page back
    #Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations - IBM (3)" for Configure Workflows
    #And Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    And Navigate page back
    And Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    #Then Verify "2 Approval parameters configured " is displaying under "Government Relations - IBM (3)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
	@Smoke @Buyer @ConfigureWorkflows @TYSFunctionality  @SanitySuiteCheck @SanityCheck
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Checklist questionnaires
      Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
      And Wait for 4 seconds
      And Click "Suppliers" tab
      And Wait for 4 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    And Wait for 2 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
      Then Select page records
      And Click "Workflow" button for "Export/Import Compliance" in "Checklist Questionnaires"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    Then Enter "test" as description for approval question "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    When Click on "Assign role" dropdown button for approval requests role "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    Then Select "Administrator" as assiging approval requests role for "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
      And Wait for 5 seconds
      When Click "Save" button
    And Wait for 5 seconds
    When Click "Workflow" button for "Export/Import Compliance" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "If your supplier is located in a country, found in Section 4, Part 2.4 of the US Export Regulation Program, do you know or have reason to suspect that the supplier is involved in any of the following activities: the design, development, production or use of nuclear or chemical/biological weapons and/or missiles/unmanned air vehicles?"
    And Wait for 3 seconds
    And Scroll Down to element "Save" is visible
    When Click on save button
    And Wait for 5 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to see all the lables and input values in Supplier Profile
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Profile" under for "Configure Workflows"
    And Wait for 2 seconds
    #When Click on label button "Delete" under "Supplier Profile"
    #And Click "Submit" button
    #Then Wait for 2 seconds
    When Click on button "Create Supplier Republish Configuration" at "Supplier Profile"
    Then Wait for 2 seconds
    #Required error message
    And Click "Save" button
    Then Verify Required "Required" error message for "Select Fields / Sections"
    And Select input dropdown as "Are you publicly traded on a stock exchange?" for "Supplier Republish Configuration"
    And Enter input as "Are you" for "Supplier Profile"
    When Click on radio button "Generate Approval Request" under for "Supplier Republish Configuration"
    And Verify Required "Required" error message for "Description"
    And Verify Required "Required" error message for role "Assign Role"
    #button visibility
    And Verify Edit button is visible in "Supplier Profile"
    And Verify "Save" button is displayed under "Supplier Profile"
    And Verify "Cancel" button is displayed under "Supplier Profile"
    And Verify "Save & Add More" button is displayed under "Supplier Profile"
    And Verify "Add Supplier Profile Configuration" label is displaying under "Supplier Profile"
    And Verify "Assign Role" input dropdown is displayed under "Supplier Profile"
    And Verify "Select Fields / Sections" input dropdown is displayed for "Supplier Profile"
    And Verify "Description" input discription is displayed for "Supplier Profile"
    #button enable
    And Verify Edit button is enable in "Supplier Profile"
    And Verify "Save" button is enable under "Supplier Profile"
    And Verify "Cancel" button is enable under "Supplier Profile"
    And Verify "Save & Add More" button is enable under "Supplier Profile"
    And Verify "Add Supplier Profile Configuration" label is enabled under "Supplier Profile"
    And Verify "Assign Role" input dropdown is enable under "Supplier Profile"
    And Verify "Select Fields / Sections" input dropdown is enable for "Supplier Profile"
    And Verify "Description" input discription is enable for "Supplier Profile"
    #tootips
    And Show "Select Fields / Sections" tooltip "Add fields or sections to the configuration Select Action" in "Create configuration"
    And Show "Generate Approval Request" tooltip as "Creates approval requests when supplier makes changes to the configured attributes" for "Supplier Profile"
    And Show "Generate Notification" tooltip as "Triggers a supplier profile publish notification when supplier makes changes to the the configured attributes" for "Supplier Profile"
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Smoke @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to delete existing configuration and create republish Configuration Supplier Profile with Generate Notification
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Profile" under for "Configure Workflows"
    And Wait for 2 seconds
    #When Click on label button "Delete" under "Supplier Profile"
    #And Click "Submit" button
    Then Wait for 2 seconds
    When Click on button "Create Supplier Republish Configuration" at "Supplier Profile"
    Then Wait for 2 seconds
    When Click on up arrow for supplier profile
    And Click on button "Create Supplier Republish Configuration" at "Supplier Profile"
    Then Wait for 2 seconds
    And Select input dropdown as "Are you publicly traded on a stock exchange?" for "Supplier Republish Configuration"
    And Select input dropdown as "Banking Info" for "Supplier Republish Configuration"
    And Select input dropdown as "Business Name" for "Supplier Republish Configuration"
    And Select input dropdown as "Business Type" for "Supplier Republish Configuration"
    And Select input dropdown as "Corporate Contact Details" for "Supplier Republish Configuration"
    And Select input dropdown as "Date Established" for "Supplier Republish Configuration"
    And Select input dropdown as "Diversity" for "Supplier Republish Configuration"
    And Select input dropdown as "External Identifiers" for "Supplier Republish Configuration"
    And Select input dropdown as "Legal Name" for "Supplier Republish Configuration"
    And Select input dropdown as "Locations" for "Supplier Republish Configuration"
    And Select input dropdown as "Management Contacts" for "Supplier Republish Configuration"
    And Select input dropdown as "Ownership" for "Supplier Republish Configuration"
    And Select input dropdown as "Stock Exchange" for "Supplier Republish Configuration"
    And Select input dropdown as "Stock Exchange Symbol" for "Supplier Republish Configuration"
    And Select input dropdown as "Tax Details" for "Supplier Republish Configuration"
    And Select input dropdown as "UNSPSC" for "Supplier Republish Configuration"
    And Enter input as "Are you" for "Supplier Profile"
    When Click on radio button "Generate Notification" under for "Supplier Republish Configuration"
    And Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
    When Click on down arrow for supplier profile
    Then Verify "Cancel" button is displayed under "Supplier Profile"
    When Click on up arrow for configure profile
    And Wait for 2 seconds
    And Logout from the system

  @Regression @Smoke @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to delete existing configuration and create republish Configuration Supplier Profile with Generate Approval Request
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Profile" under for "Configure Workflows"
    And Wait for 2 seconds
    #When Click on label button "Delete" under "Supplier Profile"
    #And Click "Submit" button
    Then Wait for 2 seconds
    When Click on button "Create Supplier Republish Configuration" at "Supplier Profile"
    Then Wait for 2 seconds
    Then Wait for 2 seconds
    And Select input dropdown as "Are you publicly traded on a stock exchange?" for "Supplier Republish Configuration"
    And Select input dropdown as "Banking Info" for "Supplier Republish Configuration"
    And Select input dropdown as "Business Name" for "Supplier Republish Configuration"
    And Select input dropdown as "Business Type" for "Supplier Republish Configuration"
    And Select input dropdown as "Corporate Contact Details" for "Supplier Republish Configuration"
    And Select input dropdown as "Date Established" for "Supplier Republish Configuration"
    And Select input dropdown as "Diversity" for "Supplier Republish Configuration"
    And Select input dropdown as "External Identifiers" for "Supplier Republish Configuration"
    And Select input dropdown as "Legal Name" for "Supplier Republish Configuration"
    And Select input dropdown as "Locations" for "Supplier Republish Configuration"
    And Select input dropdown as "Management Contacts" for "Supplier Republish Configuration"
    And Select input dropdown as "Ownership" for "Supplier Republish Configuration"
    And Select input dropdown as "Stock Exchange" for "Supplier Republish Configuration"
    And Select input dropdown as "Stock Exchange Symbol" for "Supplier Republish Configuration"
    And Select input dropdown as "Tax Details" for "Supplier Republish Configuration"
    And Select input dropdown as "UNSPSC" for "Supplier Republish Configuration"
    And Enter input as "Are you" for "Supplier Profile"
    When Click on radio button "Generate Approval Request" under for "Supplier Republish Configuration"
    And Wait for 3 seconds
    Then Select input dropdown "Assign Role" for "Administrator"
    And Enter "Description" input discription is for "test"
    And Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
    And Wait for 2 seconds
    And Logout from the system

  @Regression @Smoke @Buyer @ConfigureWorkflows
  Scenario: Verify As a Buyer, I should be able to cancel Configuration Supplier when editing
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Profile" under for "Configure Workflows"
    And Wait for 2 seconds
    When Click on down arrow for supplier profile
    Then Verify "Cancel" button is displayed under "Supplier Profile"
    When Click "Cancel" button
    And Verify "Delete" label is displaying under for "Supplier Profile"
    And Wait for 2 seconds
    And Logout from the system
