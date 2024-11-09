Feature: SRM 2

  Background: Login as Buyer
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  #29139
  @Regression @Buyer @IDDroles @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to see create dependent configuration of IDD's on Internal Assessments
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 5 seconds
    Then Click on "paginationonia" chkbox
    Then Click on "Workflow" under for "PIF Indicator (3)"
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Refresh the page
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    #When Click on "Create Rule" button for dependent questionnaire "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?"
    Then Wait for 3 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "DPL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    #Then Select "Administrator" role for "Select Role to be assigned to" in Configure Dependent Questionnaire
    When Click on "Save" button for create rule
    Then Refresh the page
    Then Click on "Workflow" under for "PIF Indicator (3)"
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Refresh the page
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    And Wait for 2 seconds
    And Logout from the system

  @Regression @Buyer @IDDroles @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to see delete the created dependent configuration of IDD's on Internal Assessments
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 5 seconds
    Then Click on "paginationonia" chkbox
    Then Click on "Workflow" under for "PIF Indicator (3)"
    When Click "Dependent Questionnaire" button under for "Workflow"
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    #When Click on "Create Rule" button for dependent questionnaire "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?"
    Then Wait for 3 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "DPL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    #Then Select "Administrator" role for "Select Role to be assigned to" in Configure Dependent Questionnaire
    When Click on "Save" button for create rule
    And Wait for 2 seconds
    Then Click on "editiconondc" chkbox
    And Select "USL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    When Click on "Save" button for create rule
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    And Wait for 2 seconds
    And Logout from the system

  @Regression @Buyer @IDDroles @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to see update the created dependent configuration of IDD's on Internal Assessments
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 5 seconds
    Then Click on "paginationonia" chkbox
    Then Click on "Workflow" under for "PIF Indicator (3)"
    When Click "Dependent Questionnaire" button under for "Workflow"
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    # When Click on "Create Rule" button for dependent questionnaire "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?"
    Then Wait for 3 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "DPL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    #Then Select "Administrator" role for "Select Role to be assigned to" in Configure Dependent Questionnaire
    When Click on "Save" button for create rule
    Then Click on "editiconondc" chkbox
    Then Click on "Deletrowconfigbutton" chkbox
    And Click on "Yes" button
    And Wait for 2 seconds
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    # When Click on "Create Rule" button for dependent questionnaire "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?"
    Then click on the "Add More" tab
    And Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "USL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    # Then Select "Administrator" role for "Select Role to be assigned to" in Configure Dependent Questionnaire
    When Click on "Save" button for create rule
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    And Wait for 2 seconds
    And Logout from the system

  #29152
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to view the "SupplierRequestConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "SupplierRequestConfiguration" security module is displayed on "Edit permission screen"
    And Logout from the system

  #29152
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to view the content under "SupplierRequestConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "This gives users access to manage configurations on Supplier Request Configurations screen" is displayed under "SupplierRequestConfiguration" security module
    And Logout from the system

  #29152
  @Regression @Buyer @permission @TYSFunctionality @SRM2
  Scenario: Verify Buyer is able to Read, write, update, delete checkboxes under "SupplierRequestConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "create" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "delete" permission is displayed under "SupplierRequestConfiguration" security module
    And Logout from the system

  #29152
  @Regression @Buyer @permission @TYSFunctionality @SRM2
  Scenario: Verify Buyer is able to Click on Read, write, update, delete checkboxes under "SupplierRequestConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "create" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    And Logout from the system

  #29152 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRMSanityCheck
  Scenario: Verify Buyer is able to view the default check on Read upon clicking on write, update, delete checkboxes under "SupplierRequestConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "create" permission under "SupplierRequestConfiguration" security module
    Then Wait for 3 seconds
    Then Verify "read" permission is selected under "SupplierRequestConfiguration" security module
    #unselecting read
    Then Click on "read" permission under "SupplierRequestConfiguration" security module
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is selected under "SupplierRequestConfiguration" security module
    #unselecting read
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is selected under "SupplierRequestConfiguration" security module
    And Logout from the system

  #29152 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to unselect on write, update, delete checkboxes then read should unselect defaultly under "SupplierRequestConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "create" permission is displayed under "SupplierRequestConfiguration" security module
    #unselecting
    Then Click on "create" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is unselected under "SupplierRequestConfiguration" security module
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    #unselecting
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is unselected under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    #unselecting
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is unselected under "SupplierRequestConfiguration" security module
    And Logout from the system

  #29554
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to view the "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "RoleAssignmentConfiguration" security module is displayed on "Edit permission screen"
    And Logout from the system

  #29554
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to view the content under "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "This gives users access to manage configurations on Role Assignment Configuration screen" is displayed under "RoleAssignmentConfiguration" security module
    And Logout from the system

  #29554
  @Regression @Buyer @permission @TYSFunctionality @SRM2
  Scenario: Verify Buyer is able to view Read, write, update, delete checkboxes under "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "create" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "update" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "delete" permission is displayed under "RoleAssignmentConfiguration" security module
    And Logout from the system

  #29554
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to Clik on Read, write, update, delete checkboxes under "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "create" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "update" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "delete" permission is displayed under "RoleAssignmentConfiguration" security module
    And Logout from the system

  #29554 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRMSanityCheck
  Scenario: Verify Buyer is able to view the default check on Read upon clicking on write, update, delete checkboxes under "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "create" permission under "RoleAssignmentConfiguration" security module
    Then Wait for 3 seconds
    Then Verify "read" permission is selected under "RoleAssignmentConfiguration" security module
    Then Wait for 3 seconds
    #unselecting read
    Then Click on "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "update" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "read" permission is selected under "RoleAssignmentConfiguration" security module
    #unselecting read
    Then Click on "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "delete" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Wait for 3 seconds
    Then Verify "read" permission is selected under "RoleAssignmentConfiguration" security module
    And Logout from the system

  #29554 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to unselect on write, update, delete checkboxes then read should unselect defaultly under "Role Assignment Configuration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "create" permission is displayed under "RoleAssignmentConfiguration" security module
    #unselecting
    Then Click on "create" permission is displayed under "SupplierRequestConfiguration" security module
    Then Verify "read" permission is unselected under "RoleAssignmentConfiguration" security module
    Then Click on "update" permission is displayed under "RoleAssignmentConfiguration" security module
    #unselecting
    Then Click on "update" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "read" permission is unselected under "RoleAssignmentConfiguration" security module
    Then Click on "delete" permission is displayed under "RoleAssignmentConfiguration" security module
    #unselecting
    Then Click on "delete" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Verify "read" permission is unselected under "RoleAssignmentConfiguration" security module
    And Logout from the system

  #29471
  @Regression @Buyer @permission @SRM2
  Scenario: Verify Buyer is able to view the "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "SupplierRequestAssessment" security module is displayed on "Edit permission screen"
    And Logout from the system

  #29471
  @Regression @Buyer @permission @SRM2
  Scenario: Verify As a Buyer, Verify Buyer is able to view the content under "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "This gives users access to supplier request assessments questionnaires which will appear on a supplier request." is displayed under "SupplierRequestAssessment" security module
    And Logout from the system

  #29471
  @Regression @Buyer @permission @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, Verify Buyer is able to Read, write, update, delete checkboxes under "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "read" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "create" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "delete" permission is displayed under "SupplierRequestAssessment" security module
    And Logout from the system

  #29471
  @Regression @Buyer @permission @SRM2
  Scenario: Verify As a Buyer, Verify Buyer is able to Clcik on Read, write, update, delete checkboxes under "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "create" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "delete" permission is displayed under "SupplierRequestAssessment" security module
    And Logout from the system

  #29471 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRM2
  Scenario: Verify As a Buyer, Verify Buyer is able to view the default check on Read upon clicking on write, update, delete checkboxes under "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "create" permission is displayed under "SupplierRequestAssessment" security module
    Then Wait for 3 seconds
    Then Verify "read" permission is selected under "SupplierRequestAssessment" security module
    #unselecting read
    Then Click on "read" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "read" permission is selected under "SupplierRequestAssessment" security module
    #unselecting read
    Then Click on "read" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "delete" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "read" permission is selected under "SupplierRequestAssessment" security module
    And Logout from the system

  #29471 #precondition none of the permission should be selected
  @Regression @Buyer @permission @SRM2
  Scenario: Verify As a Buyer, Verify Buyer is able to unselect on write, update, delete checkboxes then read should unselect defaultly under "Supplier Request Assessments" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "create" permission is displayed under "SupplierRequestAssessment" security module
    #unselecting
    Then Click on "create" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "read" permission is unselected under "SupplierRequestAssessment" security module
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    #unselecting
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "read" permission is unselected under "SupplierRequestAssessment" security module
    Then Click on "delete" permission is displayed under "SupplierRequestAssessment" security module
    #unselecting
    Then Click on "delete" permission is displayed under "SupplierRequestAssessment" security module
    Then Verify "read" permission is unselected under "SupplierRequestAssessment" security module
    And Logout from the system

  #29151 Read
  @Regression @Buyer @IDDroles @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to Read Supplier Request Configuration Supplier Request tab
    Then Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    #When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 8 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Wait for 2 seconds
    Then Verify the "Configuration 1" section visibility on the "Supplier Request" page
    Then Wait for 2 seconds
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  #29129 Delete
  @Regression @Buyer @IDDroles @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to delete Supplier Request Configuration on Supplier Request tab
    Then Wait for 10 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    #   When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Wait for 5 seconds
    Then Click on "delrowonsupreq" chkbox
    #And Click on "Submit" button
    Then Verify the "Delete Confirmation" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete " on the screen
    And Click on "Submit" button
    Then Verify toast message "Supplier Request Configuration deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    And Logout from the system
    #Unselecting the Delete permission
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  #29129 Delete
  @Regression @Buyer @IDDroles @SRM2
  Scenario: Verify As a Buyer, I should be able to delete Supplier Request Configuration inside Edit
    Then Wait for 10 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Refresh the page
    And Click on "Create configuration" button
    #Then Select "label" value from "ruleName" label
     Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    #Then Click on "ruleoption" checkbox
    # Then Select "questionnaires" role for "" in Configure Dependent Questionnaire
     Then Click on the "Select Assessment Assignments" field
    Then Select "USL Search" value from dropdown
    #Then Select "DPL Search" value from dropdown
    #Then Select "DPL Search" option under "Select Assessment Assignments"
    Then Click on the "Select roles to be assigned to" field
    Then Click on the "Administrator" role option
    #Then Select "Administrator" option under "Select roles to be assigned to"
    Then Enter "Demo1" in the "Descriptiontext" Box
    Then Wait for 10 seconds
    Then Click on "Save" button
    Then Click on the "Select Assessment Assignments" field
    Then Select "DPL Search" option under "Select Assessment Assignments"
    Then Click on the "Select roles to be assigned to" field
    Then Select "Administrator" option under "Select Assessment Assignments"
    Then Enter "Demo1" in the "Descriptiontext" Box
    Then Click on "Save" button
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    #   When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Click on "Editbuttononsr" chkbox
    Then Click on "deleteiconedit" chkbox
    Then Verify the "Delete entry in configuration" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete this entry in the " on the screen
    And Click on "Submit" button
    Then Wait for 5 seconds
    And Logout from the system
    #Unselecting the Delete permission
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    # Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    # Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  #create @29127
  @SRM2 @TYSFunctionality @SRMSanityCheck
  Scenario: verify buyer is able to create supplier request Configuration
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Refresh the page
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    # Then Select "questionnaires" role for "" in Configure Dependent Questionnaire
    Then Click on the "Select Assessment Assignments" field
    Then Select "USL Search" value from dropdown
    #Then Select "DPL Search" value from dropdown
    #Then Select "DPL Search" option under "Select Assessment Assignments"
    Then Click on the "Select roles to be assigned to" field
    Then Click on the "Administrator" role option
    #Then Select "Administrator" option under "Select roles to be assigned to"
    Then Enter "Demo1" in the "Descriptiontext" Box
    Then Wait for 10 seconds
    Then Click on "Save" button
    Then Click on "delrowonsupreq" chkbox
    #And Click on "Submit" button
    Then Verify the "Delete Confirmation" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete " on the screen
    And Click on "Submit" button
    Then Verify toast message "Supplier Request Configuration deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    And Logout from the system

  #Update @29128
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to update supplier request Configuration
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Refresh the page
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    # Then Select "questionnaires" role for "" in Configure Dependent Questionnaire
    Then Click on the "Select Assessment Assignments" field
    Then Select "DPL Search" value from dropdown
    #Then Select "DPL Search" option under "Select Assessment Assignments"
    Then Click on the "Select roles to be assigned to" field
    Then Click on the "Administrator" role option
    #Then Select "Administrator" option under "Select roles to be assigned to"
    Then Enter "Demo1" in the "Descriptiontext" Box
    Then Wait for 10 seconds
    #Then Click on "Save" button
    Then Click on save button
    Then Click on "Editbuttononsr" chkbox
    Then click on the "Add more approval +" tab
    Then Select "Administrator" option under "Select Assessment Assignments"
    Then Enter "Demo1" in the "Descriptiontext" Box
    #Then Click on "savebtn" chkbox
    Then Click on save button
    And Logout from the system

  #Update permission should not be enabled @29128
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to update supplier request Configuration
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Refresh the page
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    # Then Select "questionnaires" role for "" in Configure Dependent Questionnaire
    Then Click on the "Select Assessment Assignments" field
    Then Select "DPL Search" value from dropdown
    #Then Select "DPL Search" option under "Select Assessment Assignments"
    Then Click on the "Select roles to be assigned to" field
    Then Click on the "Administrator" role option
    #Then Select "Administrator" option under "Select roles to be assigned to"
    Then Enter "Demo1" in the "Descriptiontext" Box
    Then Wait for 10 seconds
    #Then Click on "Save" button
    Then Click on "savebtn" chkbox
    #Then Click on save button
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    # Then Click on "read" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    #When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Request" under for "Configure Workflows"
    Then Wait for 2 seconds
    Then Click on "Editbuttononsr" chkbox
    Then click on the "Add more approval +" tab
    Then Select "Administrator" option under "Select Assessment Assignments"
    Then Enter "Demo1" in the "Descriptiontext" Box
        Then Wait for 5 seconds
        Then Click on "savebtn" chkbox
    # Then Click on "Editbuttononsr" chkbox
    Then Click on "delrowonsupreq" chkbox
    And Click on "Submit" button
    And Logout from the system
    #Unselecting the Update permission
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 8 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "update" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "delete" permission is displayed under "SupplierRequestConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  #Update @29138
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to view the "supplie request" type on the internal assessment screen
    And Wait for 9 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Verify "Supplier Request" is visible as a type under for "Buyer Internal assessment" questionnaire
    Then Verify "Supplier Request" is visible as a type under for "Export/Import Compliance" questionnaire
    Then Verify "Supplier Request" is visible as a type under for "PIF Indicator" questionnaire
    #Then Verify "Supplier Requests" is visible as a type under for "Pre Invite Assessment" questionnaire
    #Then Verify "Supplier Requests" is visible as a type under for "RBA/EICC Contract" questionnaire
    #Then Verify "Supplier Requests" is visible as a type under for "S&EMS Record created" questionnaire
    #Then Verify "Supplier Requests" is visible as a type under for "USL Search" questionnaire
    And Logout from the system

  # @29138
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to view the approval requests under workflow on the "supplie request" type on the internal assessment screen
    And Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Click on "Workflow" under for "PIF Indicator"
    Then Verify "Approval Requests" button is displaying under "Workflow"
    And Logout from the system

  #@29138
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to navigate to the existing Approval ocnfiguration screen
    And Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Click on "Workflow" under for "PIF Indicator"
    And Click "Approval Requests" button under for "Workflow"
    Then Verify visibility of "appreq_display" on the approval parameters settings page
    And Logout from the system

  #@29900 #int
  @SRM2 @TYSFunctionality @SRM22
  Scenario: verify buyer is able to Update to supplier request assessment assignment based on permission chnages
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    #Then Change row per page on internal assessment to "rowperpage20onia"
    Then Select "Export Regulations" in "select" under "USL Search (1)" select role
    Then Click on save button in my account page
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Verify "Export Regulations" in "select" under "USL Search (1)" select role
    And Logout from the system

  #@29883 #int
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to Assign role for supplier request assessment questionnaire
    And Wait for 5 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Select "Export Regulations" in "select" under "USL Search (1)" select role
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    Then Wait for 8 seconds
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "update" permission is displayed under "SupplierRequestAssessment" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system

  #29177
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to configure "Role Assignment"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Verify label name "Role Assignment" is displying under "Configure Workflows"
    And Click on label button "Role Assignment" under for "Configure Workflows"
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    Then Click on "roleassignmentoption" chkbox
    Then Click on the "Export Regulations" role option on RA on Configureworkflows
    Then Select input dropdown as "rama leela" for "roledropdown"
    Then Wait for 3 seconds
    Then Verify the visibility of "Add more role +" button
    Then Verify the visibility of "Save & Add More" button
    Then Verify the visibility of "Cancel" button
    Then Click on "Save" button
    Then Verify the "Configuration 1" section visibility on the "Supplier Request" page
    And Logout from the system

  #29177 #precondition remove all permission for role assignment configuration
  @SRM2 @TYSFunctionality @SRMSanityCheck
  Scenario: verify buyer is able to view "Role Assignment" with create permission to "Role Configuration” security module
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "create" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Verify label name "Role Assignment" is displying under "Configure Workflows"
    #unclicking
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "create" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "Save" button
    And Logout from the system

  #29177 #precondition remove all permission for role assignment configuration
  @SRM2 @TYSFunctionality @SRM22
  Scenario: verify buyer is able to view "Role Assignment" with read permission to "Role Configuration” security module
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "Exportreguuser" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Verify label name "Role Assignment" is displying under "Configure Workflows"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "read" permission is displayed under "RoleAssignmentConfiguration" security module
    Then Click on "Save" button
    And Logout from the system

  #29177
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to view "Role Assignment" configurations labels
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    And Verify label name "Role Assignment" is displying under "Configure Workflows"
        Then Refresh the page
        And Click on label button "Role Assignment" under for "Configure Workflows"
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    Then Click on "roleassignmentoption" chkbox
    Then Click on the "Export Regulations" role option on RA on Configureworkflows
    Then Select input dropdown as "rama leela" for "roledropdown"
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Verify the "Configuration 1" section visibility on the "Role Assignment" page
    Then Verify "Editbuttononsr" is visible
    Then Verify "deleteicononRA" is visible
    Then Click on "deleteicononRA" chkbox
    Then Verify the "Delete Confirmation" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete " on the screen
    And Click on "Submit" button
    Then Verify toast message "Successfully deleted role assignment" successfully is shown
    And Navigate page back
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    Then Click on "roleassignmentoption" chkbox
    Then Click on the "Export Regulations" role option on RA on Configureworkflows
    Then Select input dropdown as "rama leela" for "roledropdown"
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Verify the "Configuration 2" section visibility on the "Role Assignment" page
    Then Click on "deleteicononRA" chkbox
    Then Verify the "Delete Confirmation" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete " on the screen
    And Click on "Submit" button
    And Logout from the system

  #29177  #inside delete
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to delete inside the "Role Assignment" configurations screen
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Configure Workflows" tab
    #verifying RA
    Then Verify "Role Assignment" is under "configureworkflows" screen
    And Verify label name "Role Assignment" is displying under "Configure Workflows"
    And Click on label button "Role Assignment" under for "Configure Workflows"
    And Click on "Create configuration" button
    Then Click on "rulelabel" chkbox
    #Then Select "label" value from "ruleName" label
    Then Click on "ruleoption" chkbox
    Then Click on "roleassignmentoption" chkbox
    Then Click on the "Export Regulations" role option on RA on Configureworkflows
    Then Select input dropdown as "rama leela" for "roledropdown"
    Then Wait for 3 seconds
    Then Click on "Save" button
    Then Verify "deleteiconedit" is visible
    Then Click on "deleteiconedit" chkbox
    Then Verify the "Delete entry in configuration" on "Supplier request pop up" screen
    Then Verify the "Are you sure you want to delete this entry in the " on the screen
    And Click on "Submit" button
    Then Wait for 5 seconds
    And Logout from the system

  #29940
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to view "Configure Workflows” security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Configure_Workflows" security module is displayed on "Edit permission screen"
    And Logout from the system

  #29940
  @SRM2 @TYSFunctionality @SRM2
  Scenario: verify buyer is able to view "Configure Workflows” security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "manage:workflows" permission is displayed under "Configure_Workflows" security module
    And Logout from the system

  #manage:workflows should be unched  #29940
  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Supplier questionnaires when Manage:workflows is checked
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    #Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance (6)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Enter "test" as description for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    When Click on "Assign role" dropdown button for approval requests role "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Select "Internal Buyer" as assiging approval requests role for "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    #Then Verify "2 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance (6)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    And Logout from the system
    #uncheckingmanage:workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system

  #manage:workflows should be uncheckd  #29940
  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SRM22
  Scenario: Verify As a Buyer, I should be able to Configure Dependent questionnaires for Supplier questionnaires when Manage:workflows is checked
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    When Click on "Workflow" button for "Ethics and Compliance (6)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Wait for 3 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    Then Wait for 3 seconds
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    And Wait for 3 seconds
    #And Navigate page back
    #Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations - IBM (3)" for Configure Workflows
    #And Wait for 3 seconds
    #When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    #Then Wait for 3 seconds
    #When Click "Dependent Questionnaire" button under for "Workflow"
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    And Wait for 4 seconds
    And Logout from the system
    #uncheckingmanage:workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system

  #manage:workflows should be uncheckd  #29940
  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SRMSanityCheck
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Checklist questionnaires when Manage:workflows is checked
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    And Wait for 2 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Click "Workflow" button for "RBA/EICC Contract (3)" in "Checklist Questionnaires"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Did Supplier sign the RBA/EICC Letter Agreement?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Did Supplier sign the RBA/EICC Letter Agreement?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Did Supplier sign the RBA/EICC Letter Agreement?"
    Then Enter "test" as description for approval question "Did Supplier sign the RBA/EICC Letter Agreement?"
    When Click on "Assign role" dropdown button for approval requests role "Did Supplier sign the RBA/EICC Letter Agreement?"
    Then Select "Internal Buyer" as assiging approval requests role for "Did Supplier sign the RBA/EICC Letter Agreement?"
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    Then Verify "1 Approval" displaying "RBA/EICC Contract (3)" for Configure Workflows
    When Click "Workflow" button for "RBA/EICC Contract (3)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Did Supplier sign the RBA/EICC Letter Agreement?"
    And Wait for 3 seconds
    And Scroll Down to element "Save" is visible
    When Click on save button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Wait for 3 seconds
    And Logout from the system
    #uncheckingmanage:workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system

  #29940
  @Regression @Smoke @Buyer @ConfigureWorkflows @SRM2
  Scenario: Verify As a Buyer, I should be able to delete existing configuration and create republish Configuration Supplier Profile with Generate Approval Request
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Supplier Profile" under for "Configure Workflows"
    And Wait for 2 seconds
    When Click on label button "Delete" under "Supplier Profile"
    And Click "Submit" button
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
    #uncheckingmanage:workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system

  #manage:workflows should be uncheckd  #29940
  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SRMSanityCheck
  Scenario: Verify As a Buyer,Verify the buyer is able to view "manage approvals" based on Permission
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    Then verify "Configure Workflows" tab is visible
    And Wait for 3 seconds
    And Logout from the system
    #uncheckingmanage:workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "EDI Manager" role on "Edit permission screen"
    Then Click on "manage:workflows" permission is displayed under "Configure_Workflows" security module
    Then Click on "Save" button
    And Logout from the system

  #manage:workflows should be uncheckd  #29940
  @Smoke @Buyer @ConfigureWorkflows @TYSFunctionality @SRM2
  Scenario: Verify As a Buyer,Verify the buyer is able to view "manage approvals" based on Permission(without manage workflows permission)
    And Logout from the system
    Then Enter "EDImanagerrole" buyer email in Email Address
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    Then verify "Configure Workflows" tab is not visible
    And Wait for 3 seconds
    And Logout from the system
