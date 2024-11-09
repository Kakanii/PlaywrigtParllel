Feature: Roles and Permissions Revamp

  #Configure Workflows
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the "read:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the "update:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "update:buyerSystemdetails" permission under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to click on the "read:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to click on the "update:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Verify visibility of "update:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the selected "read:buyerSystemdetails" upon clicking permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    Then Verify "read:buyerSystemdetails" permission is selected under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the selected "update:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Verify "update:buyerSystemdetails" permission is selected under "Relationship" security module
    And Logout from the system

  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the selected "read:buyerSystemdetails" upon clicking on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Verify "read:buyerSystemdetails" permission is selected under "Relationship" security module
    And Logout from the system

  #internal buyer without read & update buyer system details permission
  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the text saying no read access when "read:buyerSystemdetails" permission under "Relationship" security module is not provided
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Verify "You currently do not have the necessary permissions to access the Buyer System Details." displayed under "Buyer system Details" on action center
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with read buyer system details permission
  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the text with read access when "update:buyerSystemdetails" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Buyer System Name" filter
    Then Click on the Buyer System Name button
    Then Click on "Search" button in connected supplier filter by
    #Then Click on the Search by supplier name and press Enter
    Then verify the filtered options as "Buyer System Name"
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Verify "This section allows you to tag this supplier with identifiers from other systems for reference or for interfaces. Click the “Add Buyer System Details” button to add a System Name and ID." displayed under "Buyer system Details" on action center
    Then Verify "buyersystemfieldseditbutton" edit button is enabled under "Buyer system Details"
    Then Click on "buyersystemfieldseditbutton" edit button under "Buyer system Details"
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with read buyer system details permission
  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to add the buyersystemdetails "update:buyerSystemdetails" permission under "Relationship" security module is provided
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Italy from teh dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "addbuyersysdet" chkbox
    Then Select "Ariba Network ID" value from "root_0_buyerSystemName" label
    Then Enter "13452" in the "Bsystemid" Box
    Then Click on "submit_btn" chkbox
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with read buyer system details permission
  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to edit the buyer system details when "update:buyerSystemdetails" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Buyer System Name" filter
    Then Click on the Buyer System Name button
    Then Click on "Search" button in connected supplier filter by
    #Then Click on the Search by supplier name and press Enter
    Then verify the filtered options as "Buyer System Name"
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Verify "This section allows you to tag this supplier with identifiers from other systems for reference or for interfaces. Click the “Add Buyer System Details” button to add a System Name and ID." displayed under "Buyer system Details" on action center
    Then Verify "buyersystemfieldseditbutton" edit button is enabled under "Buyer system Details"
    Then Click on "buyersystemfieldseditbutton" edit button under "Buyer system Details"
    Then Click on "addbuyersysdet" chkbox
    Then Select "Ariba Network ID" value from "root_0_buyerSystemName" label
    Then Enter "13452" in the "Bsystemid" Box
    Then Click on "submit_btn" chkbox
    Then Click on "buyersystemfieldseditbutton" edit button under "Buyer system Details"
    Then Click on "Deletebsystemsetails" chkbox
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with both permission
  @29804 @rolesrevamp
  Scenario: Verify Buyer is able to view the unselected "read:buyerSystemdetails" & "update:buyerSystemdetails" permission under "Relationship" security moduleupon clicking on "read:buyerSystemdetails"
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "read:buyerSystemdetails" permission under "Relationship" security module
    Then Verify "read:buyerSystemdetails" permission is unselected under "Relationship" security module
    Then Verify "update:buyerSystemdetails" permission is unselected under "Relationship" security module
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer without update custom fields permission
  @29805 @rolesrevamp
  Scenario: Verify Buyer is able to view the "Update:CustomFields" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify "update:customFields" permission is displayed under "Relationship" security module
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer without update custom fields permission
  @29805 @rolesrevamp
  Scenario: Verify Buyer is able to click on the "Update:CustomFields" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "update:customFields" permission under "Relationship" security module
    #Then Verify "Update:CustomFields" permission is displayed under "Relationship" security module
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with  update custom fields permission
  @29805 @rolesrevamp
  Scenario: Verify Buyer is able to update custom fields on the supplier wide screen when "Update:CustomFields" permission under "Relationship" security module
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Italy from teh dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    #Then Save "GLP" value for "Supplier Category" field on page
    Then Select "Facility Site Services (FSS)" option in "Supplier Category (Commodity Family)" dropdown
    Then Wait for 3 seconds
    #Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Wait for 3 seconds
    Then Select "APAC" option in "IBM Region" dropdown
    Then Wait for 3 seconds
    #Then Save "APAC" value for "IBM Region" field on page
    Then Wait for 3 seconds
    Then Select "ASEAN" option in "IBM Market" dropdown
    Then Wait for 3 seconds
    #Then Save "ASEAN" value for "IBM Market" field on page
    Then Wait for 3 seconds
    Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    Then Wait for 3 seconds
    #Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    Then Wait for 3 seconds
    Then Save "ASEAN" value for "IBM Market" field on page
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    #Then Select "Albania (AL)" option in "IBM Country & ISO Code" dropdown
    #Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
    #And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click "No" option for "Is this a PIF Supplier?" field
    #Then Save "No" value for "Is this a PIF Supplier?" field on page
    Then Select "Blocked Supplier" option in "Additional Supplier Label" dropdown
    Then Wait for 3 seconds
    #Then Save "Blocked Supplier" value for "Additional Supplier Label" field on page
    Then Wait for 3 seconds
    Then Select "0 - 50,000 USD" in "Spend Threshold" dropdown
    Then Wait for 3 seconds
    #Then Save "0" value for "Spend Threshold" field on page
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    #Then Save "Yes" value for "Is supplier located in a focus country (excluding Italy and Greece)?" field on page
    Then Select "Ariba Network ID" in "System Name" dropdown
    #Then Save "Ariba Network ID" value for "System Name" field on page
    Then Enter value for "System ID" field
    #Then Save value of "System ID" field
    Then Click on Next button
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
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "update:customFields" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Verify "customfieldseditbutton" edit button is enabled under "Custom fields"
    Then Click on "customfieldseditbutton" edit button under "Custom fields"
    Then Select value "Direct Procurement Spare Parts (SPP)" from "supplierCategory"
    Then Click on "submit_btn" chkbox
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:customFields" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
  #Then Wait for 3 seconds
  #Then Select text "EMEA" under "IBM Region" for Custom Fields
  #Then Wait for 3 seconds
  #Then Select text "BENELUX" under "IBM Market" for Custom Fields
  #Then Wait for 3 seconds
  # Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
  # Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
  # Then Wait for 3 seconds
  # Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
  #Then Click on "Save Changes" button under Custom Fields
  #And Logout from the system
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify "read:supplierQuestionnaire" permission is displayed under "Relationship" security module
    And Logout from the system

  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify "update:supplierQuestionnaire" permission is displayed under "Relationship" security module
    And Logout from the system

  #internal buyer without read & update SupplierQuestionnaire permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the text saying no read access when "read:SupplierQuestionnaire" permission under "Relationship" security module is not provided
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see Questionnaires label on Supplier Wider screen
    #on profile wide screen
    Then Verify "You currently do not have the necessary permissions to access the Supplier Questionnaire. Please contact your administrator for assistance." displayed under "Questionnaire" on action center
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with read Supplier Questionnaire permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the text with read access when "read:SupplierQuestionnaire" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see Questionnaires title under Profile
    #And Usere can see Manage/Assign Questionnaires button
    #When Click on Manage/Assign Questionnaires button
    #And Wait for 2 seconds
    #Then User can see a title on Manage Questionnaires page
    And Logout from the system
    Then Enter data in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with update Supplier Questionnaire permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view and click on questionnaire with update access when "Update:SupplierQuestionnaire" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see Questionnaires title under Profile
    And Usere can see Manage/Assign Questionnaires button
    When Click on Manage/Assign Questionnaires button
    And Wait for 2 seconds
    Then User can see a title on Manage Questionnaires page
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the selected "read:supplierQuestionnaire" upon clicking on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:buyerSystemdetails" permission under "Relationship" security module
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Verify "read:supplierQuestionnaire" permission is selected under "Relationship" security module
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer Buyer with both permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to view the unselected "read:supplierQuestionnaire" & "update:supplierQuestionnaire" permission under "Relationship" security moduleupon clicking on "read:buyerSystemdetails"
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Verify "read:supplierQuestionnaire" permission is unselected under "Relationship" security module
    Then Verify "update:supplierQuestionnaire" permission is unselected under "Relationship" security module
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with only Read permission
  @29801
  Scenario: Verify Buyer is not able to view manage/Assign questionnaire when "update:supplierQuestionnaire" is not given, only "read:supplierQuestionnaire" is provided
    #Then Verify "" questionnaire label visible under ""
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Verify "mangequestionnaire" which is "labelmaq" is not visible on page
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with update Supplier Questionnaire permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to add questionnaire with update access when "Update:SupplierQuestionnaire" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see Questionnaires title under Profile
    And Usere can see Manage/Assign Questionnaires button
    When Click on Manage/Assign Questionnaires button
    And Wait for 2 seconds
    Then Click on "Add" on the "Company Operations" questionaire in managequestionnaire screen
    Then Click "Update" button in assign questionnaires page
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with update Supplier Questionnaire permission
  @29801 @rolesrevamp
  Scenario: Verify Buyer is able to Remove questionnaire with update access when "Update:SupplierQuestionnaire" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see Questionnaires title under Profile
    And Usere can see Manage/Assign Questionnaires button
    When Click on Manage/Assign Questionnaires button
    And Wait for 2 seconds
    Then Click on "Remove" on the "Company Operations" questionaire in managequestionnaire screen
    Then Click "Update" button in assign questionnaires page
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierQuestionnaire" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify "read:supplierRelationshipContact" permission is displayed under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify "update:supplierRelationshipContact" permission is displayed under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the "read:SupplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:supplierRelationshipContact" permission under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "update:supplierRelationshipContact" permission under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to click on the "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "read:supplierRelationshipContact" permission under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to click on the "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Verify visibility of "update:supplierRelationshipContact" permission under "Relationship" security module
    And Logout from the system

  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the selected "read:supplierRelationshipContact" upon clicking on "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Verify visibility of "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Verify "read:supplierRelationshipContact" permission is selected under "Relationship" security module
    And Logout from the system

  #By default buyer has both permission
  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the unselected "read:supplierRelationshipContact" & "update:supplierRelationshipContact" permission under "Relationship" security moduleupon clicking on "read:supplierRelationshipContact"
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "Relationship" security module is displayed on "Edit permission screen"
    Then Click on "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Verify "read:supplierRelationshipContact" permission is unselected under "Relationship" security module
    Then Verify "update:supplierRelationshipContact" permission is unselected under "Relationship" security module
    And Logout from the system

  #internal buyer without read & update supplierRelationshipContact permission
  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to view the text saying no read access when "read:supplierRelationshipContact" permission under "Relationship" security module is not provided
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    When Click on the Action Center
    Then User can see Supplier Relationship Contacts title under Action Center
    #on profile wide screen
    Then Verify "You currently do not have the necessary permissions to access the Supplier Relationship Contacts. Please contact your administrator for assistance." displayed under "Supplier Relationship Contacts" on action center
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with only Read permission
  @30174
  Scenario: Verify Buyer is not able to view edit icon on SRC when "update:supplierRelationshipContact" is not given, only "read:supplierRelationshipContact" is provided
    #Then Verify "" questionnaire label visible under ""
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    When Click on the Action Center
    Then Verify "srconactioncenter" which is "Update Contacts" is not visible on page
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with update Supplier Questionnaire permission
  @30174 @rolesrevamp
  Scenario: Verify Buyer is able to Edit SRC with update access when "update:supplierRelationshipContact" permission under "Relationship" security module is provided
    Then Wait for 3 seconds
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "update:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "Save" button
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on "Filter by" button on "Connected Supplier page"
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Profile Complete"
    Then Click on "Search" button in connected supplier filter by
    Then verify the status as "Profile Complete"
    Then click on "Profile Complete" on Connected Suppliers page record
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    When Click on the Action Center
    #Then Click on Update contacts icon "Internal Buyer" role
    Then Click on "srcinternalac" chkbox
    Then Wait for 3 seconds
    Then Update contacts "rama l, ramaltestsrc@maildrop.cc" role
    Then Click on "Save" button on "Update Contacts"
    And Wait for 2 seconds
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "read:supplierRelationshipContact" permission under "Relationship" security module
    Then Click on "Save" button
    And Logout from the system

  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to view the "RevalidationConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "RevalidationConfiguration" security module is displayed on "Edit permission screen"
    And Logout from the system

  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to view the content under "RevalidationConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "Users with this permission can manage frequency-based revalidations for all onboarded suppliers." is displayed under "RevalidationConfiguration" security module
    And Logout from the system

  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to view "manage:revalidationConfiguration" checkbox under "RevalidationConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    And Logout from the system

  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to Click on "manage:revalidationConfiguration" checkbox under "RevalidationConfiguration" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    And Logout from the system

  #with Manage revalidation permission
  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to view the "RevalidationConfiguration" tab when "manage:revalidationConfiguration" is provided
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    #Then Click on Revalidation Configuration on Dashboard page "true"
    Then Show title on Revalidation Configuration page "Revalidation Configuration"
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with only Read permission
  @31055
  Scenario: Verify Buyer is not able to view Revalidation Configuration menu when "manage:revalidationConfiguration" permission is not provided
    #Then Verify "" questionnaire label visible under ""
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    Then Verify "underadminactions" which is "Revalidation Configuration" is not visible on page
    And Logout from the system

  #with Manage revalidation permission
  @31055 @rolesrevamp
  Scenario: Verify Buyer is able to create the "RevalidationConfiguration" when "manage:revalidationConfiguration" is provided
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    And Click "Revalidation Configuration" tab
    #Then Click on Revalidation Configuration on Dashboard page "true"
    Then Show title on Revalidation Configuration page "Revalidation Configuration"
    When Click on "Create Periodic Revalidation" button
    Then Select "1" value from "year-list" label
    And Select "4" value from "month-list" label
    And Select "NA" value from "Supplier Tax Region" category
    #And Select "United States of America" value from "Supplier Tax Country" category
    When Click "Save" button
    Then Verify toast message "Configuration has been saved successfully" successfully is shown
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:revalidationConfiguration" permission is displayed under "RevalidationConfiguration" security module
    Then Click on "Save" button
    And Logout from the system

  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to view the "RevalidationConfiguration" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Scroll the page
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Verify "RevalidationConfiguration" security module is displayed on "Edit permission screen"
    And Logout from the system

  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to view the content under "ReminderSettings" security module
    Then Wait for 3 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "Users with this permission can configure reminder emails for onboarding stages, setting frequency, duration, and templates based on supplier status for efficiency." is displayed under "ReminderSettings" security module
    And Logout from the system

  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to view "manage:reminderSettings" checkbox under "ReminderSettings" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Verify "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    And Logout from the system

  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to Click on "manage:reminderSettings" checkbox under "ReminderSettings" security module
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Export Regulations" role on "Edit permission screen"
    Then Click on "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    And Logout from the system

  #with Manage revalidation permission
  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to view the "ReminderSettings" tab when "manage:reminderSettings" is provided
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    And Click "Reminder Settings" tab
    #Then Click on Revalidation Configuration on Dashboard page "true"
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    Then Click on "Save" button
    And Logout from the system

  #By default buyer has no permission, in this provided Buyer with only Read permission
  @30902
  Scenario: Verify Buyer is not able to view Revalidation Configuration menu when "manage:revalidationConfiguration" permission is not provided
    #Then Verify "" questionnaire label visible under ""
    Then Wait for 3 seconds
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    Then Verify "underadminactions" which is "Reminder Settings" is not visible on page
    And Logout from the system

  #with Manage revalidation permission
  @30902 @rolesrevamp
  Scenario: Verify Buyer is able to create the "ReminderSettings" when "manage:reminderSettings" is provided
    Then Wait for 5 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    Then Click on "Save" button
    And Logout from the system
    Then Enter "InternalBuyer" buyer email in Email Address
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 5 seconds
    Then Click on My Suppliers Tab
    And Click "Admin Actions" tab
    And Click "Reminder Settings" tab
    #Then Click on Revalidation Configuration on Dashboard page "true"
    #Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Invite" value from "template" label
    Then Select "Administrator" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click on "deleteremiconedit" chkbox
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    Then Click on Edit Permissions tab
    Then Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    Then Click on "manage:reminderSettings" permission is displayed under "ReminderSettings" security module
    Then Click on "Save" button
    And Logout from the system
