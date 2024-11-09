Feature: Supplier Dashboard Quick Links

  #SupplierDashboard
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @SupplierDashboard
  Scenario: Verify labels on Supplier Dashboard
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Supplier can see Profile Information block
    And Supplier can see Questionnaires block
    And Supplier can see Bank Account block
    And Supplier can see Admin Actions block
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @SupplierDashboard
  Scenario: Verify labels under Profile Information on Supplier Dashboard
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Supplier can see Basic Informaiton sub block
    And Supplier can see External Identifiers sub block
    And Supplier can see Management sub block
    And Supplier can see Ownership sub block
    And Supplier can see Corporate Relationships sub block
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @SupplierDashboard
  Scenario: Verify labels under Questionnaires on Supplier Dashboard
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Questionnaires block
    And Wait for 2 seconds
    Then Supplier can see Anti-Bribery, Anti-Corruption Questionnaire sub block
    And Supplier can see Conflict Minerals Questionnaire sub block
    And Supplier can see Company Operations Questionnaire sub block
    And Supplier can see Employment Standards Questionnaire sub block
    And Wait for 3 seconds
    Then Logout from the system
    
  @Regression @SupplierDashboard
  Scenario: Verify labels under Admin Actions on Supplier Dashboard
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Admin Actions block
    And Wait for 2 seconds
    Then Supplier can see Manage Users sub block
    And Supplier can see Password Configuration sub block
    And Wait for 3 seconds
    Then Logout from the system  
    
 @Smoke @SupplierDashboard
  Scenario: Verify title on Basic Information page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Basic Information sub block
    And Wait for 2 seconds
    Then Supplier can see a title on Basic Information page
    And Wait for 3 seconds
    Then Logout from the system   
    
 @Smoke @SupplierDashboard
  Scenario: Verify title on External Identifiers page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on External Identifiers sub block
    And Wait for 2 seconds
    Then Supplier can see a title on External Identifiers page
    And Wait for 3 seconds
    Then Logout from the system     
    
@Smoke @SupplierDashboard
  Scenario: Verify link on Management page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Management sub block
    And Wait for 2 seconds
    Then Supplier can see a link on Management page
    And Wait for 3 seconds
    Then Logout from the system   
    
 @Smoke @SupplierDashboard
  Scenario: Verify Add Ownership dropdown on Management page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Ownership sub block
    And Wait for 2 seconds
    Then Supplier can see Add Ownership dropdown
    And Wait for 3 seconds
    Then Logout from the system   
    
 @Smoke @SupplierDashboard
  Scenario: Verify title on Corporate Relationships page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Corporate Relations sub block
    And Wait for 2 seconds
    Then Supplier can see a title on Corporate Relationships page
    And Wait for 3 seconds
    Then Logout from the system         
    
 @Smoke @SupplierDashboard
  Scenario: Verify title on Questionnaires page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Questionnaires block
    And Click on ABAC Questionnaire
    Then Suppler can see a title on Anti-Bribery, Anti-Corruption
    And Wait for 3 seconds
    When Click on Dashboard tab
    And Click on Questionnaires block
    And Click on Conflict Minerals Questionnaire
    Then Suppler can see a title on Conflict Minerals
    And Wait for 3 seconds
    When Click on Dashboard tab
    And Click on Questionnaires block
    And Click on Company Operations Questionnaire
    Then Suppler can see a title on Company Operations
    And Wait for 3 seconds
    Then Logout from the system      
    
  @Smoke @SupplierDashboard
  Scenario: Verify title on Bank Account Information page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Bank Account block
    Then Suppler can see a title on Bank Account page
    And Wait for 3 seconds
    Then Logout from the system    
    
  @Smoke @SupplierDashboard @QuickCheck
  Scenario: Verify title on Admin Actions page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Admin Actions block
    And Click on Manage Users
    Then Suppler can see a title on Manage Users page
    And Wait for 3 seconds
    When Click on Dashboard tab
    And Click on Admin Actions block
    And Click on Password Configurations
    Then Suppler can see a title on Password Configurations page
    And Wait for 3 seconds
    Then Logout from the system   
    
 @Smoke @SupplierDashboard
  Scenario: Verify Hide and View link on Supplier Dashboard
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Supplier can see Hide link    
    And Click on Hide link
    And Supplier can see View link
    And Click on View link    
    And Wait for 3 seconds
    Then Logout from the system     
    
 @Smoke @SupplierDashboard @TYSFunctionality
  Scenario: Verify title on Notifications page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on Notifications Navigation Icon
		Then Supplier can see a title on Notifications page  
    And Wait for 3 seconds
    Then Logout from the system  
    
  @Smoke @SupplierDashboard @TYSFunctionality
  Scenario: Verify title on Notifications Settings page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Supplier can see Notifications Setting Icon
    When Click on Notifications Settings Icon
		Then Supplier can see a title on Notifications Settings page  
    And Wait for 3 seconds
    Then Logout from the system      
    
  @Smoke @SupplierDashboard @TYSFunctionality
  Scenario: Verify collapse and expand icon in Notifications section on Supplier Dashboard page
    When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Supplier can see expand and collapse Icon
    When Click on collapse Icon
    And Click on Expand Icon
    And Wait for 3 seconds
    Then Logout from the system      
    
      
