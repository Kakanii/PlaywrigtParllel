Feature: Supplierquickview

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    And Close the hotjar window
    And Enter data in Email Address field
    #When Enter Redhat buyer in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Then Click "Suppliers" tab
    And Click "Connected Suppliers" tab

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Pending Invites status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Pending Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Pending Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Pending Invites status and Questionnaire Group from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Pending Invites"
    And Click on "Supplier Questionnaire Group" filter
    And Click on Search and Select input field for Supplier Questionnaire Group
    And Select Pending Invites in Status dropdown "Automation"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Pending Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Accepted Invites status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Accepted Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Accepted Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Accepted Invites status and Questionnaire Group from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Accepted Invites"
    And Click on "Supplier Questionnaire Group" filter
    And Click on Search and Select input field for Supplier Questionnaire Group
    And Select Pending Invites in Status dropdown "Automation"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Accepted Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Declined Invites status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Declined Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Declined Invites"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Profile Complete status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Profile Complete"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Profile Complete"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Profile Complete status and Questionnaire Group from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Profile Complete"
    And Click on "Supplier Questionnaire Group" filter
    And Click on Search and Select input field for Supplier Questionnaire Group
    And Select Pending Invites in Status dropdown "Automation"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Profile Complete"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Ready For Review status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Ready For Review"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Ready For Review"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Ready For Review status and Questionnaire Group from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Ready For Review"
    And Click on "Supplier Questionnaire Group" filter
    And Click on Search and Select input field for Supplier Questionnaire Group
    And Select Pending Invites in Status dropdown "Automation"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Ready For Review"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Onboarded status from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Onboarded"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Onboarded"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @SupplierQuickview @QuickView
  Scenario: Verify supplier status by selecting the Onboarded status and Questionnaire Group from filter
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Onboarded"
    And Click on "Supplier Questionnaire Group" filter
    And Click on Search and Select input field for Supplier Questionnaire Group
    And Select Pending Invites in Status dropdown "Automation"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Onboarded"
    When Click on Clear All link on Connected Suppliers page
    And Logout from the system

  @Regression @BuyerPagination @Buyer @SupplierQuickview @QuickView
  Scenario: Verify Next arrow button visibility on My Supplier page
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @Buyer @SupplierQuickview @QuickView
  Scenario: Verify Next arrow button  and Prev arrow button functionality on My Supplier page
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @Buyer @QuickView @SupplierQuickview
  Scenario: Verify Next arrow button visibility on My Supplier page if row per page is 100
    Then Change row per page to "100"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @Buyer @page @SupplierQuickview
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 80
    Then Change row per page to "80"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @Buyer @page @SupplierQuickview
  Scenario: Verify Next arrow button visibility and status on My Supplier page if row per page is 60
    Then Change row per page to "60"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @BuyerPagination @Buyer @page @SupplierQuickview
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 40
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @Buyer @page @SupplierQuickview
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 20
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @Buyer @page @SupplierQuickview
  Scenario: Verify Next arrow button and Prev arrow button functionality on My Supplier page if row per page is 10
    Then Change row per page to "10"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  #overview-Profile-labels
  @Smoke @SupplierQuickview @QuickView
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Accepted Invite" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Accepted Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Accepted Invites"
    Then Click on the Search by supplier name and press Enter
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1400" dimension on the page
    And User can see Locations label on Supplier Wider screen
    And Scroll Down until "1500" dimension on the page
    And User can see Corporate Relationships label on Supplier Wider screen
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    And Scroll Down until "2000" dimension on the page
    Then User can see Bank Accounts label on Supplier Wider screen    
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds
    Then User can see Approval Requests label under Action Center on Supplier Wider screen
    And Scroll Down until "800" dimension on the page
    And User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen
    And User can see Custom Fields label under Action Center on Supplier Wider screen
    And Scroll Down until "1700" dimension on the page
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    And Scroll Down until "1800" dimension on the page
    And User can see Buyer System Details label under Action Center on Supplier Wider screen
    And Scroll Down until "1950" dimension on the page
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system

  # ReadyForReview
  @Smoke @SupplierQuickview @QuickView
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Ready For Review" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Ready For Review"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Ready For Review"
    Then Click on the Search by supplier name and press Enter
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds
    And User can see Industry & Activities label on Supplier Wider screen
    And User can see Ownership label on Supplier Wider screen
    And Scroll Down until "1400" dimension on the page
    And User can see Locations label on Supplier Wider screen
    And Scroll Down until "1500" dimension on the page
    And User can see Corporate Relationships label on Supplier Wider screen
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    And Scroll Down until "2000" dimension on the page
    And User can see Documents label on Supplier Wider screen
    Then User can see Bank Accounts label on Supplier Wider screen    
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds
    Then User can see Approval Requests label under Action Center on Supplier Wider screen
    And Scroll Down until "800" dimension on the page
    And User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen
    And User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen    
    And User can see Custom Fields label under Action Center on Supplier Wider screen
    And Scroll Down until "1700" dimension on the page
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    And Scroll Down until "1800" dimension on the page
    And User can see Buyer System Details label under Action Center on Supplier Wider screen
    And Scroll Down until "1950" dimension on the page
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system

  # profile Complete
  @Smoke @SupplierQuickview @QuickView @SanitySuiteCheck @SanityCheck
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Profile Complete" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Profile Complete"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Profile Complete"
    And Click on first supplier from connected supplier
    And Click "Go to details" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds
    And User can see Industry & Activities label on Supplier Wider screen
    And User can see Ownership label on Supplier Wider screen
    And Scroll Down until "1400" dimension on the page
    And User can see Locations label on Supplier Wider screen
    And Scroll Down until "1500" dimension on the page
    And User can see Corporate Relationships label on Supplier Wider screen
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    And Scroll Down until "2000" dimension on the page
    And User can see Documents label on Supplier Wider screen
    Then User can see Bank Accounts label on Supplier Wider screen    
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds
    Then User can see Approval Requests label under Action Center on Supplier Wider screen
    And Scroll Down until "800" dimension on the page
    And User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen
    And User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen    
    And User can see Custom Fields label under Action Center on Supplier Wider screen
    And Scroll Down until "1700" dimension on the page
    #And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    #And Scroll Down until "1800" dimension on the page
    And User can see Buyer System Details label under Action Center on Supplier Wider screen
    And Scroll Down until "1950" dimension on the page
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system

  #Returned to Supplier
  @Smoke @SupplierQuickview @QuickView
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Returned to Supplier" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Returned to Supplier"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Returned to Supplier"
    Then Click on the Search by supplier name and press Enter
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds
    And User can see Industry & Activities label on Supplier Wider screen
    And User can see Ownership label on Supplier Wider screen
    And Scroll Down until "1400" dimension on the page
    And User can see Locations label on Supplier Wider screen
    And Scroll Down until "1500" dimension on the page
    And User can see Corporate Relationships label on Supplier Wider screen
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    And Scroll Down until "2000" dimension on the page
    And User can see Documents label on Supplier Wider screen
    Then User can see Bank Accounts label on Supplier Wider screen    
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds
    Then User can see Approval Requests label under Action Center on Supplier Wider screen
    And Scroll Down until "800" dimension on the page
    And User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen
    And User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen    
    And User can see Custom Fields label under Action Center on Supplier Wider screen
    And Scroll Down until "1700" dimension on the page
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    And Scroll Down until "1800" dimension on the page
    And User can see Buyer System Details label under Action Center on Supplier Wider screen
    And Scroll Down until "1950" dimension on the page
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system

  #Onboarded
  @Smoke @SupplierQuickview @QuickView
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Onboarded" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Onboarded"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Onboarded"
    Then Click on the Search by supplier name and press Enter
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds
    And User can see Industry & Activities label on Supplier Wider screen
    And User can see Ownership label on Supplier Wider screen
    And Scroll Down until "1400" dimension on the page
    And User can see Locations label on Supplier Wider screen
    And Scroll Down until "1500" dimension on the page
    And User can see Corporate Relationships label on Supplier Wider screen
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    And Scroll Down until "2000" dimension on the page
    And User can see Documents label on Supplier Wider screen
    Then User can see Bank Accounts label on Supplier Wider screen    
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds
    Then User can see Approval Requests label under Action Center on Supplier Wider screen
    And Scroll Down until "800" dimension on the page
    And User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen
    And User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen    
    And User can see Custom Fields label under Action Center on Supplier Wider screen
    And Scroll Down until "1700" dimension on the page
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    And Scroll Down until "1800" dimension on the page
    And User can see Buyer System Details label under Action Center on Supplier Wider screen
    And Scroll Down until "1950" dimension on the page
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system

  #Decline Invite
  @Smoke @SupplierQuickview @QuickView
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Declined Invites" supplier status
    Then Click on "Filter by" button on "Connected Supplier page"
    And Click on "Status" filter
    And Click on Search and Select input field for Status
    And Select Pending Invites in Status dropdown "Declined Invites"
    And Click on "Search" button in connected supplier filter by
    And Wait 5 seconds
    Then verify the status as "Declined Invites"
    Then Click on the Search by supplier name and press Enter
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    And User can see Reason for Decline label on Supplier Wider screen
    And User can see Contacts label on Supplier Wider screen
    And Wait for 2 seconds    
    And User can see Locations label on Supplier Wider screen   
    And Switch to the active window
    And Wait for 2 seconds
    # Action Center
    When Click on Action Center tab
    And Wait for 5 seconds   
    Then User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen    
    And Scroll Down until "1300" dimension on the page
    And User can see Relationship History Contacts label under Action Center on Supplier Wider screen  
    And User can see Notes label under Action Center on Supplier Wider screen
    And Wait for 5 seconds
    And Logout from the system
