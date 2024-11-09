Feature: Supplier Wider Screen

  #SupplierWiderScreen Functionality
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @SupplierWiderScreen
  Scenario: Verify title on Connected Suppliers page
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    When Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Company Profile Overview section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And User can see Collapse Icon in Company Profile Overview section
    When Click on Collapse Icon in Company Profile Overview section
    Then User can see Expand Icon in Company Profile Overview section
    When Click on Expand Icon in Company Profile Overview section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Industry & Activities under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    Then User can see Industry & Activities title under Profile
    And Wait for 2 seconds
    And User can see UNSPSC label under Profile
    And Scroll Down until "600" dimension on the page
    And User can see NAICS label under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Industry & Activities section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    Then User can see Industry & Activities title under Profile
    And Wait for 2 seconds
    And User can see Collapse Icon in Industry & Activities section
    When Click on Collapse Icon in Industry & Activities section
    And Wait for 2 seconds
    Then User can see Expand Icon in Industry & Activities section
    When Click on Expand Icon in Industry & Activities section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Contacts under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "300" dimension on the page
    Then User can see Contacts title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Contacts section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "300" dimension on the page
    Then User can see Contacts title under Profile
    And Wait for 2 seconds
    And User can see Collapse Icon in Contacts section
    When Click on Collapse Icon in Contacts section
    And Wait for 2 seconds
    Then User can see Expand Icon in Contacts section
    When Click on Expand Icon in Contacts section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Financial under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    Then User can see Financial title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Financial section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    And Wait for 2 seconds
    And User can see Collapse Icon in Financial section
    When Click on Collapse Icon in Financial section
    And Wait for 2 seconds
    Then User can see Expand Icon in Financial section
    When Click on Expand Icon in Financial section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Ownership under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    Then User can see Ownership title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Ownership section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    And Wait for 2 seconds
    And User can see Collapse Icon in Ownership section
    When Click on Collapse Icon in Ownership section
    And Wait for 2 seconds
    Then User can see Expand Icon in Ownership section
    When Click on Expand Icon in Ownership section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Locations under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "400" dimension on the page
    Then User can see Locations title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Locations section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    And User can see Collapse Icon in Locations section
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    Then User can see Expand Icon in Locations section
    When Click on Expand Icon in Locations section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Corporate Relationships under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    Then User can see Corporate Relationships title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Corporate Relationships section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And User can see Collapse Icon in Corporate Relationships section
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    Then User can see Expand Icon in Corporate Relationships section
    When Click on Expand Icon in Corporate Relationships section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Questionnaires under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    Then User can see Questionnaires title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title on Manage Questionnaires page
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    Then User can see Questionnaires title under Profile
    And Usere can see Manage/Assign Questionnaires button
    When Click on Manage/Assign Questionnaires button
    And Wait for 2 seconds
    Then User can see a title on Manage Questionnaires page
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @SupplierWiderScreen @QuickCheck
  Scenario: Verify the download questionnaires on Supplier wider screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    Then User can see Questionnaires title under Profile
    And Click on Download down arrow on Supplier Wider screen
    And Download Questionnaires on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Questionnaires section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    Then User can see Questionnaires title under Profile
    And User can see Collapse Icon in Questionnaires section
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    Then User can see Expand Icon in Questionnaires section
    When Click on Expand Icon in Questionnaires section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Documents under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    Then User can see Documents title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Documents section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "690" dimension on the page
    Then User can see Documents title under Profile
    And User can see Collapse Icon in Documents section
    When Click on Collapse Icon in Documents section
    And Wait for 2 seconds
    Then User can see Expand Icon in Documents section
    When Click on Expand Icon in Documents section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Supplier Questionnaire Group under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    When Click on Collapse Icon in Documents section
    And Wait for 2 seconds
    And Scroll Down until "710" dimension on the page
    Then User can see Supplier Questionnaire Group title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Supplier Questionnaire Group section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    When Click on Collapse Icon in Documents section
    And Wait for 2 seconds
    And Scroll Down until "750" dimension on the page
    Then User can see Supplier Questionnaire Group title under Profile
    And User can see Collapse Icon in Supplier Questionnaire Group section
    When Click on Collapse Icon in Supplier Questionnaire Group section
    And Wait for 2 seconds
    Then User can see Expand Icon in Supplier Questionnaire Group section
    When Click on Expand Icon in Supplier Questionnaire Group section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Bank Account under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    When Click on Collapse Icon in Documents section
    And Wait for 2 seconds
    And Scroll Down until "710" dimension on the page
    When Click on Collapse Icon in Supplier Questionnaire Group section
    And Wait for 2 seconds
    And Scroll Down until "850" dimension on the page
    And Wait for 2 seconds
    Then User can see Bank Account title under Profile
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Bank Account section under Profile on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on Collapse Icon in Company Profile Overview section
    And Click on Collapse Icon in Industry & Activities section
    And Scroll Down until "200" dimension on the page
    And Click on Collapse Icon in Contacts section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Financial section
    And Scroll Down until "300" dimension on the page
    When Click on Collapse Icon in Ownership section
    And Scroll Down until "450" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Locations section
    And Wait for 2 seconds
    And Scroll Down until "500" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Corporate Relationships section
    And Wait for 2 seconds
    And Scroll Down until "600" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    When Click on Collapse Icon in Documents section
    And Wait for 2 seconds
    And Scroll Down until "710" dimension on the page
    When Click on Collapse Icon in Supplier Questionnaire Group section
    And Wait for 2 seconds
    And Scroll Down until "850" dimension on the page
    And Wait for 2 seconds
    Then User can see Bank Account title under Profile
    And User can see Collapse Icon in Bank Account section
    When Click on Collapse Icon in Bank Account section
    And Wait for 2 seconds
    Then User can see Expand Icon in Bank Account section
    #When Click on Expand Icon in Bank Account section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Approval Requests under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    Then User can see Approval Requests title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the Create Approal Request button under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    Then User can see Create Approval Requests button under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify title on Create Approal Request right drawer under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    Then User can see Create Approval Requests button under Action Center
    When Click on Create Approval Requests button under Action Center
    Then User can see Create Approval Request title on right drawer
    When Click on Close button in Create Approval Request right drawer
    Then Switch to the parent window
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Approval Request section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    Then User can see Approval Requests title under Action Center
    And Wait for 2 seconds
    And User can see Collapse Icon in Approval Requests section
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    Then User can see Expand Icon in Approval Requests section
    When Click on Expand Icon in Approval Requests section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Supplier Relationship Contacts under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    And Wait for 2 seconds
    Then User can see Supplier Relationship Contacts title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Supplier Relationship Contacts section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 2 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    Then User can see Supplier Relationship Contacts title under Action Center
    And Wait for 2 seconds
    And User can see Collapse Icon in Supplier Relationship Contacts section
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    Then User can see Expand Icon in Supplier Relationship Contacts section
    When Click on Expand Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Supplier Relationship History under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    Then User can see Supplier Relationship History title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Supplier Relationship History section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    Then User can see Supplier Relationship History title under Action Center
    And Wait for 2 seconds
    And User can see Collapse Icon in Supplier Relationship History section
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    Then User can see Expand Icon in Supplier Relationship History section
    When Click on Expand Icon in Supplier Relationship History section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Checklist Questionnaires under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    Then User can see Checklist Questionnaires title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Checklist Questionnaires section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    Then User can see Checklist Questionnaires title under Action Center
    And Wait for 2 seconds
    And User can see Collapse Icon in Checklist Questionnaires section
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    Then User can see Expand Icon in Checklist Questionnaires section
    When Click on Expand Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Buyer System Details under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "240" dimension on the page
    Then User can see Buyer System Details title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Buyer System Details section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    Then User can see Buyer System Details title under Action Center
    And Wait for 2 seconds
    And User can see Collapse Icon in Buyer System Details section
    When Click on Collapse Icon in Buyer System Details section
    And Wait for 2 seconds
    Then User can see Expand Icon in Buyer System Details section
    When Click on Expand Icon in Buyer System Details section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Custom Fields under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    When Click on Collapse Icon in Buyer System Details section
    And Wait for 2 seconds
    Then User can see Custom Fields title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Custom Fields section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    When Click on Collapse Icon in Buyer System Details section
    And Wait for 2 seconds
    Then User can see Custom Fields title under Action Center
    And User can see Collapse Icon in Custom Fields section
    When Click on Collapse Icon in Custom Fields section
    And Wait for 2 seconds
    Then User can see Expand Icon in Custom Fields section
    When Click on Expand Icon in Custom Fields section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Notes under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    When Click on Collapse Icon in Buyer System Details section
    And Wait for 2 seconds
    When Click on Collapse Icon in Custom Fields section
    And Wait for 2 seconds
    And Scroll Down until "320" dimension on the page
    Then User can see Notes title under Action Center
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify Expand and Collapse in Notes section under Action Center on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on Collapse Icon in Approval Requests section
    And Wait for 2 seconds
    And Scroll Down until "100" dimension on the page
    And Wait for 2 seconds
    When Click on Collapse Icon in Supplier Relationship Contacts section
    And Wait for 2 seconds
    And Scroll Down until "150" dimension on the page
    When Click on Collapse Icon in Supplier Relationship History section
    And Wait for 2 seconds
    When Click on Collapse Icon in Checklist Questionnaires section
    And Wait for 2 seconds
    And Scroll Down until "250" dimension on the page
    When Click on Collapse Icon in Buyer System Details section
    And Wait for 2 seconds
    When Click on Collapse Icon in Custom Fields section
    And Wait for 2 seconds
    And Scroll Down until "330" dimension on the page
    Then User can see Notes title under Action Center
    And User can see Collapse Icon in Notes section
    When Click on Collapse Icon in Notes section
    And Wait for 2 seconds
    Then User can see Expand Icon in Notes section
    When Click on Expand Icon in Notes section
    And Wait for 2 seconds
    Then Logout from the system

  @Regression @SupplierWiderScreen
  Scenario: Verify the title Notifications under Notifications on Supplier Wider Screen
    When Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "GOOGLE LLC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    And Click on Notifications tab
    And Wait for 5 seconds
    Then Shows Notifications title
    And Wait for 3 seconds
    Then Logout from the system

  #####**************RD Preinvite visible for the suppliers from Pendning invite status if we add Preinvite while inviting ***** ####
 
  
 @Buyer @actioncenter @TYSFunctionality
  Scenario: verify buyer is able to view Preinviteassessment for new suppliers which are in "Pendning Invite status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system
    
     @smoke @Buyer @actioncenter
  Scenario: verify buyer is able to view Preinviteassessment for new supplier which is in "Accepted status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then Logout from the system
    #Action center
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system

     @smoke @Buyer @actioncenter
  Scenario: verify buyer is able to view Preinviteassessment for new supplier which is in "Profile completed status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    #Then Click on button "Publish" for questionare
    Then Logout from the system
    #Action center
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system
    
    @smoke @Buyer @actioncenter
  Scenario: verify buyer is able to view Preinviteassessment for new supplier which is in "Ready for Review status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    #Then Click on button "Publish" for questionare
    Then Logout from the system
    #Action center
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system
    
    
     @Buyer @actioncenter @TYSFunctionality
  Scenario: verify buyer is able to view Preinviteassessment for new supplier which is in "Ready to onboard status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why the IBM B2B Commerce for Procurement Onboarding Specialist Internal Assessment is not completed." field on page
    #Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    #Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button        
      #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Wait for 3 seconds
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    #Then Click on button "Publish" for questionare
    Then Logout from the system
    #Action center
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
     #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Netherlands" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the "DPL Search" under Approval Source
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 15 seconds
    Then verify the status as "Ready To Onboard"
    Then Wait for 5 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds              
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system



 @smoke @Buyer @actioncenter
  Scenario: verify buyer is able to view Preinviteassessment for new supplier which is in "Onboarded status"
    Then Enter data in Email Address field
    # And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 5 seconds
    Then Click on "Yes" radio option on "Is the forecasted spend (project and manual) higher than 200K EUR?"
    Then Save "Yes" value for "Is the forecasted spend (project and manual) higher than 200K EUR?" field on page
    Then Select "gold" in "Badge" dropdown
    Then Save "gold" value for "Badge" field on page
    Then Select "1" in "D&B Rating" dropdown
    Then Save "1" value for "D&B Rating" field on page
    Then Enter "autotest" value in "Username" input field
    Then Save "autotest" value for "Username" field on page
    Then Enter "autotest" value in "Please justify why Buyer Internal Assessment is not completed." textarea field
    Then Save "autotest" value for "Please justify why Buyer Internal Assessment is not completed." field on page
    Then Enter "6666666" value in "Bank Key" input field
    Then Save "6666666" value for "Bank Key" field on page
    Then Click on "Payment card information (PCI)" option in "For the BT Consumers, what categories of personal data are being processed?" checkbox field
    Then Save "Payment card information (PCI)" value for "For the BT Consumers, what categories of personal data are being processed?" field on page
    Then Select "Information technology (IT) consulting and support services" from "Please select the type of services from the list." search and select drop down
    Then Save "Information technology (IT) consulting and support services" value for "Please select the type of services from the list." field on page
    Then Select "04/30/2030" on "target date" field
    Then Save "04/30/2030" value for "target date" field on page
    Then Click on Next button
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    #Then Click on button "Publish" for questionare
    Then Logout from the system
    #Action center
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
     #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Netherlands" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the "DPL Search" under Approval Source
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 15 seconds
    Then verify the status as "Ready To Onboard"
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds              
    And User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen
    When verify Buyer is able to view the table header as "Pre Invite Questionnaire name"
    And Wait for 5 seconds
    And Logout from the system
    