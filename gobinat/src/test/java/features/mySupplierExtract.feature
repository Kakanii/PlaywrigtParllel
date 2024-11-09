Feature: My Supplier Extract Feature

  #MySupplierExtract
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  #My Supplier Extract for Connected Suppliers
  @Regression @MySupplierExtract
  Scenario: Verify title on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @MySupplierExtract
  Scenario: Verify Extract labels on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    Then Shows One Supplier Selected label in a extract bar
    And Shows Export Selected label in a extract bar
    And Shows Export All label in a extract bar
    And Shows Cancel label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @MySupplierExtract
  Scenario: Verify Cancel button fuctionality on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    Then Shows One Supplier Selected label in a extract bar
    And Shows Export Selected label in a extract bar
    And Shows Export All label in a extract bar
    And Shows Cancel label in a extract bar
    And Wait for 2 seconds
    When Click on Cancel in a extract bar
    Then Buyer not able to see extract bar "false"
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @MySupplierExtract
  Scenario: Verify Extract label by selecting two Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    And Select the second and top Supplier
    Then Shows Two Suppliers Selected label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @MySupplierExtract
  Scenario: Verify Extract label by unselecting a Supplier on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    And Select the second and top Supplier
    And Wait for 2 seconds
    Then Shows Two Suppliers Selected label in a extract bar
    And Wait for 2 seconds
    When Unselect the first and top Supplier
    Then Shows One Supplier Selected label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @MySupplierExtract
  Scenario: Verify Export Selected functionality on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    And Select the second and top Supplier
    And Wait for 2 seconds
    And Click on Export Selected in a extract bar
    Then Verify toast message "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes." successfully is shown
    And Wait for 2 seconds
    When Click on My Supplier Extract on Dashboard page "true"
    And Wait for 2 seconds
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Shows Extracted info on Extract Page
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @MySupplierExtract
  Scenario: Verify Export All functionality on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    And Wait for 3 seconds
    When Select the first and top Supplier
    And Select the second and top Supplier
    And Wait for 2 seconds
    And Click on Export All in a extract bar
    Then Verify toast message "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes." successfully is shown
    And Wait for 2 seconds
    When Click on My Supplier Extract on Dashboard page "true"
    And Wait for 2 seconds
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Shows Extracted info on Extract Page
    And Shows Extracted info connected suppliers label on Extract Page
    And Wait for 2 seconds
    Then Logout from the system

  #My Supplier Extract for Manage Contacts
  @Regression @MySupplierExtract
  Scenario: Verify title on Manage Contacts page for Buyer
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    And Logout from the system
    
  @Regression @MySupplierExtract
  Scenario: Verify Extract labels on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    Then Shows One Contact Selected label in a extract bar
    And Shows Export Selected label in a extract bar
    And Shows Export All label in a extract bar
    And Shows Cancel label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system 
    
  @Smoke @MySupplierExtract
  Scenario: Verify Cancel button fuctionality on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    Then Shows One Contact Selected label in a extract bar
    And Shows Export Selected label in a extract bar
    And Shows Export All label in a extract bar
    And Shows Cancel label in a extract bar
    And Wait for 2 seconds
    When Click on Cancel in a extract bar
    Then Buyer not able to see extract bar "false"
    And Wait for 2 seconds
    Then Logout from the system
    
@Regression @MySupplierExtract
  Scenario: Verify Extract label by selecting two Contacts on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    And Select the second and top Contact
    Then Shows Two Contacts Selected label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system
    
  @Smoke @MySupplierExtract
  Scenario: Verify Extract label by unselecting a Supplier on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    And Select the second and top Contact
    And Wait for 2 seconds
    Then Shows Two Contacts Selected label in a extract bar
    And Wait for 2 seconds
    When Unselect the first and top Supplier
    Then Shows One Contact Selected label in a extract bar
    And Wait for 2 seconds
    Then Logout from the system
    
  @Smoke @MySupplierExtract
  Scenario: Verify Export Selected functionality on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    And Select the second and top Contact
    And Wait for 2 seconds
    And Click on Export Selected in a extract bar
    Then Verify toast message "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes." successfully is shown
    And Wait for 2 seconds
    When Click on My Supplier Extract on Dashboard page "true"
    And Wait for 2 seconds
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Shows Extracted info on Extract Page
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @MySupplierExtract
  Scenario: Verify Export All functionality on Manage Contacts page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field 
    And Click on Sign In button on Login
    Then Wait for 3 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Wait for 2 seconds
    When Select the first and top Contact
    And Select the second and top Contact
    And Wait for 2 seconds
    And Click on Export All in a extract bar
    Then Verify toast message "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes." successfully is shown
    And Wait for 2 seconds
    When Click on My Supplier Extract on Dashboard page "true"
    And Wait for 2 seconds
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Shows Extracted info on Extract Page
    And Shows Extracted info manage contacts label on Extract Page
    And Wait for 2 seconds
    Then Logout from the system         
