Feature: Buyer Dashboard Quick Links

  #BuyerDashboard
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @BuyerDashboard
  Scenario: Verify title on Buyer Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Show the title on Dashboard page
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify components on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    Then Show the title on Dashboard page
    And Buyer can see Connected Suppliers block
    And Buyer can see Discoverable Suppliers block
    And Buyer can see Open Approvals block
    And Buyer can see Open Checklist
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify title on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Buyer can see Connected Suppliers block
    When Click on Connected Suppliers block
    And Wait for 7 seconds
    Then Buyer can see title on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify title on Discoverable Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Buyer can see Discoverable Suppliers block
    When Click on Discoverable Suppliers block
    And Wait for 7 seconds
    And Click on TYS Discover tab
    Then Buyer can see title on Discoverable Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify title on Manage Approals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Buyer can see Open Approvals block
    When Click on Open Approvals block
    And Wait for 7 seconds
    Then Buyer can see title on Open Approvals page
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify All Suppliers on Dashboard page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Pending Invites under All Suppliers section
    And Show Accepted Invites under All Suppliers section
    And Show Declined Invites under All Suppliers section
    And Show Profile Complete under All Suppliers section
    And Show Ready For Review under All Suppliers section
    And Show Lifecycle Updates Review under All Suppliers section
    And Show Returned to Supplier under All Suppliers section
    And Show Onboarded under All Suppliers section
    And Show Revalidation Started under All Suppliers section
    And Show Revalidation Review under All Suppliers section
    And Show Preloaded under All Suppliers section
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard @HotfixCheck
  Scenario: Verify Pending Invites Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Pending Invites under All Suppliers section
    When Click on Pending Invites under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Pending Invites on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Accepted Invites Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Accepted Invites under All Suppliers section
    When Click on Accepted Invites under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Accepted Invites on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Declined Invites Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Declined Invites under All Suppliers section
    When Click on Declined Invites under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Declined Invites on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Profile Complete Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Profile Complete under All Suppliers section
    When Click on Profile Complete under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Profile Complete on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Ready For Review Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Ready For Review under All Suppliers section
    When Click on Ready For Review under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Ready For Review on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Lifecycle Updates Review Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Lifecycle Updates Review under All Suppliers section
    When Click on Lifecycle Updates Review under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Lifecycle Updates Review on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Returned to Supplier Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Returned to Supplier under All Suppliers section
    When Click on Returned to Supplier under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Returned to Supplier on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Onboarded Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Onboarded under All Suppliers section
    When Click on Onboarded under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Onboarded on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Revalidation Started Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Revalidation Started under All Suppliers section
    When Click on Revalidation Started under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Revalidation Started on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Revalidation Review Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Revalidation Review under All Suppliers section
    When Click on Revalidation Review under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Revalidation Review on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Preloaded Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Preloaded under All Suppliers section
    When Click on Preloaded under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Preloaded on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Collapse and Expand of All Suppliers block on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    When Click on Collapse icon in All Suppliers block
    And Click on Expand icon in All Suppliers block
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify All Approvals on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Pending Approvals in Approvals section
    And Show Approved Approvals in Approvals section
    And Show Rejected Approvals in Approvals section
    And Show Requested Info Approvals in Approvals section
    And Show Complete Approvals in Approvals section
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard @SanitySuiteCheck @SanityCheck
  Scenario: Verify Pending Approvals on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Pending Approvals in Approvals section
    When Click on "Approvals" button for dashboard
    When Click "Administrator" div button
    When Click on Pending Approvals in Approvals section on Dashabord
    And Wait for 5 seconds
    Then Buyer can see Pending Approvals on Manage Appovals page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify Approved Approvals on Manage Approvals page
    When Enter Redhat buyer in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Approved Approvals in Approvals section
    When Click on "Approvals" button for dashboard
    When Click "Administrator" div button
    When Click on Approved Approvals in Approvals section on Dashabord
    And Wait for 5 seconds
    Then Buyer can see Approved Approvals on Manage Appovals page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Rejected Approvals on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Rejected Approvals in Approvals section
    When Click on Rejected Approvals in Approvals section on Dashabord
    And Wait for 5 seconds
    Then Buyer can see Rejected Approvals on Manage Appovals page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Requested Info Approvals on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Requested Info Approvals in Approvals section
    When Click on Requested Info Approvals in Approvals section on Dashabord
    And Wait for 5 seconds
    Then Buyer can see Requested Info Approvals on Manage Appovals page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard @SanitySuiteCheck @SanityCheck
  Scenario: Verify Complete Approvals on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Complete Approvals in Approvals section
    When Click on "Approvals" button for dashboard
    When Click "Administrator" div button
    When Click on Complete Approvals in Approvals section on Dashabord
    And Wait for 5 seconds
    Then Buyer can see Complete Approvals on Manage Appovals page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Collapse and Expand of All Approvals block on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    When Click on Collapse icon in All Approvals block
    And Click on Expand icon in All Approvals block
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify Open Onboarding Checklist label on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show Open Onboarding Checklist label on Dashboard page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Collapse and Expand of Open Onboarding Checklist block on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    When Click on Collapse icon in Open Onboarding Checklist block
    And Click on Expand icon in Open Onboarding Checklist block
    And Wait for 3 seconds
    Then Logout from the system

  @Regression @BuyerDashboard
  Scenario: Verify Suppliers by country label on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show Suppliers by country label on Dashboard page
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Collapse and Expand of Suppliers by country block on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    When Click on Collapse icon in Suppliers by country block
    And Click on Expand icon in Suppliers by country block
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Pending Invites value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "pending" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Accepted Invites value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "accepted" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Returned To Supplier value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "flagged" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Ready For Review value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "submitted" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Lifecycle Updates Review value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "lifecycle_updates_review" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Revalidation Started value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "revalidation_started" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Revalidation Review value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "revalidation_review" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Profile Complete value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "published" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Onboarded value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "onboarded" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard @TYSFunctionality
  Scenario: Verify Preloaded value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "preloaded" from Suppliers by country dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Sort By Count (Descending) value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "count_desc" from Sort By Count dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Sort By Count (Ascending) value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "count_asc" from Sort By Count dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Sort Alphabetically (Ascending) value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "alphabets_asc" from Sort By Count dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Sort Alphabetically (Descending) value and select from Suppliers by country dropdown on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "900" dimension on the page
    When Select "alphabets_desc" from Sort By Count dropdown
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify See More and Hide links in Suppliers by country section on Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Scroll Down until "1500" dimension on the page
    And Buyer can see See More link in Suppliers by country section
    When Click on See More link in Suppliers by country section
    And Scroll Down until "2000" dimension on the page
    Then Buyer can see Hide link in Suppliers by country section
    And Scroll Down until "1500" dimension on the page
    When Click on Hide link in Suppliers by country section
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @BuyerDashboard
  Scenario: Verify Ready To Onboard Suppliers on Connected Suppliers page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show Ready To Onboard under All Suppliers section
    When Click on Ready TO Onboard under All Suppliers section on Dashboard
    And Wait for 5 seconds
    Then Buyer can see Ready To Onboard on Connected Suppliers page
    And Wait for 3 seconds
    Then Logout from the system
