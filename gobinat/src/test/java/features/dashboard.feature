Feature: Dashboard page

  #Dashboard
  # @SupplierDashboard
 Background: Start the application
    Given Open the login page
    When Wait 3 seconds
    Then Close the hotjar window

  #Then Close the hotjar window
  @Smoke @Regression @Dashboard @Buyer @BuyerDashboard @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify title on Dashboard page for Buyer
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title on Dashboard page
    Then Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Dashboard tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Dashboard tab on Dashboard page "true"
    And Dashboard tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Notifications tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    And Logout from the system
    Then Clear browser cookie

  @Regression @Dashboard @Buyer @BuyerDashboard @QuickSanity 
  Scenario: Verify title on Notifications page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify My Suppliers tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Show My Suppliers tab on Dashboard page "true"
    Then My Suppliers tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Invite Supplier tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Invite Supplier tab on Dashboard page "true"
    Then Invite Supplier tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Discover tab visibility and on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Company label visibility on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Company label on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Profile tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 5 seconds
    And Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 25 seconds
    #Then Scroll Down
    Then Click on "Company" Down arrow on Dashboard
    Then Show Profile tab on Dashboard page "true"
    Then Profile tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Manage Questionnaires tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    And Click on "Admin Actions" Down arrow on Dashboard
    Then Show Manage Questionnaires tab on Dashboard page "true"
    Then Manage Questionnaires tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Admin Actions label visibility on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Admin Actions label on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Manage Users tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Manage Users tab on Dashboard page "true"
    Then Manage Users tab clickable on Dashboard page "true"
    And Logout from the system

  # @Regression @Dashboard @Buyer @BuyerDashboard
  #Scenario: Verify Supplier Data Upload tab visibility and status on Dashboard page for Buyer
  #Then Enter data in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "Admin Actions" Down arrow on Dashboard
  #Then Show Supplier Data Upload tab on Dashboard page "true"
  #Then Supplier Data Upload tab clickable on Dashboard page "true"
  #Then Logout from the system
  #@Regression @Dashboard @Buyer @BuyerDashboard
  #Scenario: Verify Contact Info tab visibility on Dashboard page for Buyer
  #Then Enter data in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #Then Show Contact Info tab on Dashboard page "true"
  #Then Logout from the system
  #@Regression @Dashboard @Buyer @BuyerDashboard
  #Scenario: Verify Contact Info tab status on Dashboard page for Buyer
  #Then Enter data in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #Then Contact Info tab clickable on Dashboard page "true"
  #Then Logout from the system
  #@Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify B2B Config tab visibility and status on Dashboard page for Buyer

  #Then Enter data in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #Then Show B2B Config tab on Dashboard page "true"
  #Then B2B Config tab clickable on Dashboard page "true"
  #Then Logout from the system
  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Dashboard tab visibility and status on Dashboard page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Dashboard tab on Supplier Dashboard page "true"
    Then Dashboard tab clickable on Supplier Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Notifications tab visibility and status on Dashboard page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify mybuyers tab visibility and status on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    And Click on My Buyers Nav link
    Then Show MyBuyers tab on Dashboard page "true"
    Then MyBuyers tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Profile tab visibility on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Profile tab on suplier Dashboard page "true"
    Then Profile tab clickable on suplier Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Questionnaires tab visibility and status on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Questionnaires Nav link
    Then Show Questionnaires tab on Dashboard page "true"
    Then Questionnaires tab clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Manage Users tab visibility and status on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    When Click on Collapse Icon for Suppliers page
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click on Manage Users Nav link for Suppliers
    Then Show Manage Users tab on supplier Dashboard page "true"
    Then Manage Users tab clickable on supplier Dashboard page "true"
    And Logout from the system

  #@Regression @Dashboard @Supplier @SupplierDashboard
  #Scenario: Verify Contact Info tab visibility and status on Dashboard for Supplier
  #When Enter Supplier Email in Email Address field
  ##Then Click on Continue button on Login page
  #And Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #And Click on Contact Info Nav link
  #Then Show Contact Info tab on Supplier Dashboard page "true"
  #Then Contact Info tab clickable on Supplier Dashboard page "true"
  #And Logout from the system
  #@Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI
  #Scenario: Verify title on Contact Info page for Supplier
  #When Enter Supplier Email in Email Address field
  ##Then Click on Continue button on Login page
  #And Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #And Click on Contact Info Nav link
  #Then Show Contact Info tab on Supplier Dashboard page "true"
  #Then Show title on Contact Info page "B2B Contact Information"
  #And Logout from the system
  #@Regression @Dashboard @Supplier @SupplierDashboard
  #Scenario: Verify B2B Config tab visibility and status on Dashboard for Supplier
  # Then Enter Supplier Email in Email Address field
  # #Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #Then Click on B2B Config Nav link
  #Then Show B2B Config tab on Supplier Dashboard page "true"
  #Then B2B Config tab clickable on Supplier Dashboard page "true"
  #Then Logout from the system
  #@Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI
  #Scenario: Verify title on B2B Config page for Supplier
  #Then Enter Supplier Email in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Password field
  #Then Click on Sign In button on Login
  #Then Click on "B2B Config" Down arrow on Dashboard
  #Then Click on B2B Config Nav link
  #Then Show title on B2B Config page "B2B Configuration"
  #Then Logout from the system
  
  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Bank Account tab visibility and status on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    When Click on Collapse Icon for Suppliers page
    Then Click on Bank Account Nav link
    Then Show Bank Account tab on Dashboard page "true"
    Then Bank Account tab clickable on Dashboard page "true"
    And Logout from the system

  # No billing
  #@Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Billing tab visibility and status on Dashboard for Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Billing Nav link
    Then Show Billing tab on Dashboard page "true"
    Then Billing tab clickable on Dashboard page "true"
    Then Logout from the system

  #@Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI
  Scenario: Verify title on Billing page for Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Billing Nav link
    Then Click on Billing on Dashboard page "true"
    Then Show title on Billing page "Add a Payment"
    Then Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Help tab visibility and status on Dashboard for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Help Nav link
    Then Show Help tab on Supplier Dashboard page "true"
    Then Help tab clickable on Supplier Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Go to my Suppliers visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Go to my suppliers on Dashboard page "true"
    Then Go to my suppliers clickable on Dashboard page "true"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @SanitySuiteCheck @SanityCheck
  Scenario: Verify title on My Supplier page for Buyer
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Go to my Notifications visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Go to my Notifications on Dashboard page "true"
    Then Go to my Notifications clickable on Dashboard page "true"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Go to my Suppliers visibility and status on Dashboard page for Supplier
    When Enter Supplier Email with RFR Status in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Go to my Buyers on Dashboard page "true"
    Then Go to my Buyers clickable on Dashboard page "true"
    And Logout from the system

  @Smoke @Dashboard @Supplier @SupplierDashboard @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify title on My Buyers page for Supplier
    When Enter Supplier Email with RFR Status in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my Buyers on Dashboard page "true"
    Then Show title on My Buyers page "My Buyers"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Go to my Notifications visibility and status on Dashboard page for Supplier
    When Enter Supplier Email with RFR Status in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show Go to my Notifications on Dashboard page "true"
    Then Go to my Notifications clickable on Dashboard page "true"
    And Logout from the system

  @Smoke @Dashboard @Supplier @SupplierDashboard @CDCI @SanitySuiteCheck @SanityCheck
  Scenario: Verify title on Notifications page for Supplier
    When Enter Supplier Email with RFR Status in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Get Started and description on Dashboard page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show the Head title as "Get Started" on the Dashboard page
    Then Show the description "Great to have you on board! Feel free to explore, or get a head start below." on the Dashboard page
    And Logout from the system

  # @Regression @Dashboard @Supplier @SupplierDashboard
  # Scenario: Verify Four tiles, their expansion, navigation, Hide.on Dashboard page for Supplier
  #   Then Enter Supplier Email in Email Address field
  #   #Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Show "Profile Information" tile on the Dashboard page
  #   Then Show "Questionnaires" tile on the Dashboard page
  #   Then Show "Admin Actions" tile on the Dashboard page
  #   Then Show "Bank Account" tile on the Dashboard page
  #   #Then Click on "Profile Information" tile on the Dashboard page
  #   Then Show "Basic Information" Subtile on the Dashboard page
  #   Then Show "Locations" Subtile on the Dashboard page
  #   Then Show "Contacts" Subtile on the Dashboard page
  #   Then Show "Management" Subtile on the Dashboard page
  #   Then Show "Ownership" Subtile on the Dashboard page
  #   Then Show "Corporate Hierarchy" Subtile on the Dashboard page
  #   Then Show "Financial" Subtile on the Dashboard page
  #   Then Click on "Questionnaires" tile on the Dashboard page
  #   Then Show "Canada Business and Tax Registration" Questionnaire tile on the Dashboard page
  #   Then Click on "Bank Account" tile on the Dashboard page
  #   Then Show title on Bank Account page "Bank Account Information"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Show "Manage Users" Subtile on the Dashboard page
  #   Then Show "Password Configuration" Subtile on the Dashboard page
  #   Then Show "Set up billing" Subtile on the Dashboard page
  #   Then Click on "Profile Information" tile on the Dashboard page
  #   Then Click on "Basic Information" Subtile on the Dashboard page
  #   Then Show title on Profile page "Basic Information"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Locations" Subtile on the Dashboard page
  #   Then Show Add New Location Button on Locations page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Contacts" Subtile on the Dashboard page
  #   Then Show Add a New Contact button on Contacts "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Management" Subtile on the Dashboard page
  #   Then Show Management page desctiption "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Ownership" Subtile on the Dashboard page
  #   Then Show Ownership page desctiption "true"
  #   Then Show Add Ownership button "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Corporate Hierarchy" Subtile on the Dashboard page
  #   Then Show Add to Corporate Hierarchy button on Corporate Hierarchy page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Financial" Subtile on the Dashboard page
  #   Then Show Financial page description on Financial page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Manage Users" Subtile on the Dashboard page
  #   Then Show Invite a New User button on Manage Users page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Password Configuration" Subtile on the Dashboard page
  #   Then Show the page title "Password Configuration"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Set up billing" Subtile on the Dashboard page
  #   Then Show the page title "Subscription Plans and Pricing"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Hide" on the Dashboard page
  #   Then Click on "View" on the Dashboard page
  #   Then Logout from the system
  
  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Latest Notifications and navigation icon, Hide on Dashboard page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show "Notifications" section on Dashboard page
    Then Click on the Navigation Arrow at "Notifications" section
    Then Show title "Notifications" on Supplier Notification page
    Then Click on Dashboard tab of Supplier
    Then Click on Down facing svg at "Notifications" section
    Then Click on Down facing svg at "Notifications" section
    And Logout from the system

  # No data
  #@Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Apps, Navigation, Hide on Dashboard page for Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Marketplace" Down arrow on Dashboard
    Then Show "All Apps" section on Dashboard page
    Then Click on the Navigation Arrow at "All Apps" section
    Then Show the page title "TYS Marketplace"
    Then Click on Dashboard tab of Supplier
    Then Click on Down facing svg at "Apps" section
    Then Click on Down facing svg at "Apps" section
    Then Show "EcoVadis" tile on the Dashboard page
    Then Click on "EcoVadis" tile on the Dashboard page
    # Title on App
    Then Show "EcoVadis" tile on the Dashboard page
    Then Logout from the system

  # @Regression @Dashboard @Supplier @SupplierDashboard
  # Scenario: Verify new dashboard with Published user and submitted Questionnaire for published Supplier
  #   Then Enter supplier email in Email Address field "publishedusa@mailinator.com"
  #   #Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   #Then Show the profile information status "8 / 8"
  #   Then Show the Questionaire status "You have 3 Questionnaires"
  #   #Then Click on "Profile Information" tile on the Dashboard page
  #   #Then Click on "Basic Information" Subtile on the Dashboard page
  #   #Then Show title on Profile page "Basic Information"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Locations" Subtile on the Dashboard page
  #   Then Show Add New Location Button on Locations page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Contacts" Subtile on the Dashboard page
  #   Then Show Add a New Contact button on Contacts "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Management" Subtile on the Dashboard page
  #   Then Show Management page desctiption "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Ownership" Subtile on the Dashboard page
  #   Then Show Ownership page desctiption "true"
  #   Then Show Add Ownership button "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Corporate Hierarchy" Subtile on the Dashboard page
  #   Then Show Add to Corporate Hierarchy button on Corporate Hierarchy page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Financial" Subtile on the Dashboard page
  #   Then Show Financial page description on Financial page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Manage Users" Subtile on the Dashboard page
  #   Then Show Invite a New User button on Manage Users page "true"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Password Configuration" Subtile on the Dashboard page
  #   Then Show the page title "Password Configuration"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Admin Actions" tile on the Dashboard page
  #   Then Click on "Set up billing" Subtile on the Dashboard page
  #   Then Show the page title "Subscription Plans and Pricing"
  #   Then Click on Dashboard tab of Supplier
  #   Then Click on "Hide" on the Dashboard page
  #   Then Click on "View" on the Dashboard page
  #   Then Logout from the system
  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Latest Notifications and navigation icon, Hide on Dashboard page for published Supplier
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show "Notifications" section on Dashboard page
    Then Click on the Navigation Arrow at "Notifications" section
    Then Show title "Notifications" on Supplier Notification page
    Then Click on Dashboard tab of Supplier
    Then Click on Down facing svg at "Notifications" section
    Then Click on Down facing svg at "Notifications" section
    And Logout from the system

  # no data
  #@Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Apps, Navigation, Hide on Dashboard page for published Supplier
    Then Enter supplier email in Email Address field "publishedusa@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Show "Apps" section on Dashboard page
    Then Click on the Navigation Arrow at "Apps" section
    Then Show the page title "TYS Marketplace"
    Then Click on Dashboard tab of Supplier
    Then Click on Down facing svg at "Apps" section
    Then Click on Down facing svg at "Apps" section
    Then Show "EcoVadis" tile on the Dashboard page
    Then Click on "EcoVadis" tile on the Dashboard page
    # Title on App
    Then Show "EcoVadis" tile on the Dashboard page
    Then Logout from the system

  #@Regression @Dashboard @Supplier @BuyerDashboard @approvaldropdown
  Scenario: Verify all the Elements present in Dropdown on Dashboard Page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    And Click on Dashboard page
    Then Verify "Accepted Invites" listed in SuppliersByCountry dropdown
    Then Verify "Returned To Supplier" listed in SuppliersByCountry dropdown
    Then Verify "Ready For Review" listed in SuppliersByCountry dropdown
    Then Verify "Profile Complete" listed in SuppliersByCountry dropdown
    Then Verify "Onboarded" listed in SuppliersByCountry dropdown
    Then Verify "Sort By Count (Descending)" listed in SuppliersByCountry dropdown
    Then Verify "Sort By Count (Ascending)" listed in SuppliersByCountry dropdown
    Then Verify "Sort Alphabetically (Ascending) " listed in SuppliersByCountry dropdown
    Then Verify "Sort Alphabetically (Descending) " listed in SuppliersByCountry dropdown
    And Logout from the system

  @Regression @Dashboard @Supplier @BuyerDashboard @allsuppliers
  Scenario: Verify All suppliers links enabled on Dashboard Page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    And Click on Dashboard page
    Then Verify "Accepted Invites" link enabled in All Suppliers
    Then Verify "Pending Invites" link enabled in All Suppliers
    Then Verify "Profile Complete" link enabled in All Suppliers
    Then Verify "Ready For Review" link enabled in All Suppliers
    Then Verify "Returned to Supplier" link enabled in All Suppliers
    Then Verify "Onboarded" link enabled in All Suppliers
    And Logout from the system

  @Regression @Dashboard @Supplier @BuyerDashboard
  Scenario: Verify Collapse Button for All Blocks in Dashboard Page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Dashboard page
    And Wait for 5 seconds
    Then verify "All Suppliers" button collapsed
    Then verify "All Suppliers" button expanded
    Then verify "Open Onboarding Checklist" button collapsed
    Then verify "Open Onboarding Checklist" button expanded
    And Logout from the system

  #@Regression @Dashboard @Supplier @BuyerDashboard
  Scenario: Verify Collapse Button for Suppliers by country in Dashboard Page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Dashboard page
    And Wait for 5 seconds
    Then verify "Suppliers by country" button collapsed on suppliers by country
    Then verify "Suppliers by country" button expanded on suppliers by country
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard @openapprovalandchecklisttooltip
  Scenario: Verify Dashboard Page OpenApprovals and Open Checklist tooltips
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    And Click on Dashboard page
    Then Show "Open Approvals" tooltip "The count of the total open approval requests which are" on Dashboard page
    Then Show "Open Checklist" tooltip "The count of the total open onboarding checklist which are " on Dashboard page
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard
  Scenario: Verify Four tiles, their expansion, navigation, Hide.on Dashboard page for Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Show "Profile Information" tile on the Dashboard page
    Then Show "Questionnaires" tile on the Dashboard page
    Then Show "Admin Actions" tile on the Dashboard page
    Then Show "Bank Account" tile on the Dashboard page
    #Then Click on "Profile Information" tile on the Dashboard page
    Then Show "Basic Information" Subtile on the Dashboard page
    #Then Show "Locations" Subtile on the Dashboard page
    #Then Show "Contacts" Subtile on the Dashboard page
    Then Show "Management" Subtile on the Dashboard page
    Then Show "Ownership" Subtile on the Dashboard page
    Then Show "Corporate Relationships" Subtile on the Dashboard page
    #Then Show "Financial" Subtile on the Dashboard page
    Then Click on "Questionnaires" tile on the Dashboard page
    #Then Show "Canada Business and Tax Registration" Questionnaire tile on the Dashboard page
    Then Click on "Bank Account" tile on the Dashboard page
    Then Show title on Bank Account page "Bank Account Information"
    Then Click on Dashboard tab of Supplier
    Then Click on "Admin Actions" tile on the Dashboard page
    Then Show "Manage Users" Subtiles on the Dashboard page
    Then Show "Password Configuration" Subtiles on the Dashboard page
    #Then Show "Set up billing" Subtile on the Dashboard page
    Then Click on "Profile Information" tile on the Dashboard page
    Then Click on "Basic Information" Subtile on the Dashboard page
    Then Show title on Profile page "Basic Information"
    Then Click on Dashboard tab of Supplier
    #Then Click on "Locations" Subtile on the Dashboard page
    #Then Show Add New Location Button on Locations page "true"
    #Then Click on Dashboard tab of Supplier
    #Then Click on "Contacts" Subtile on the Dashboard page
    #Then Show Add a New Contact button on Contacts "true"
    #Then Click on Dashboard tab of Supplier
    Then Click on "Management" Subtile on the Dashboard page
    Then Show Management page desctiption "true"
    Then Click on Dashboard tab of Supplier
    Then Click on "Ownership" Subtile on the Dashboard page
    Then Show Ownership page desctiption "true"
    Then Show Add Ownership button "true"
    Then Click on Dashboard tab of Supplier
    Then Click on "Corporate Relationships" Subtile on the Dashboard page
    #Then Show Add to Corporate Hierarchy button on Corporate Hierarchy page "true"
    Then Click on Dashboard tab of Supplier
    #Then Click on "Financial" Subtile on the Dashboard page
    #Then Show Financial page description on Financial page "true"
    #Then Click on Dashboard tab of Supplier
    Then Logout from the system

  #BUYER DASHBOARD
  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Notifications page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Repots page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Reports on Dashboard page "true"
    Then Show title on Report page "Reports"
    And Logout from the system

  #@Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity
  Scenario: Verify title on Third Party Risk Info page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Third Party Risk Info on Dashboard page "true"
    Then Show title on ReportThird Party Risk Info page "Verisk Maplecroft"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Marketplace page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Marketplace on Dashboard page "true"
    Then Show title on Marketplace page "All Apps"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Suppliers label visibility on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    #Then Click on "Suppliers" Down arrow on Dashboard
    And Click on My Suppliers Tab
    Then Show Suppliers label on Dashboard page "true"
    Then Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity
  Scenario: Verify title on Discoverable Supplier page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Discoverable Supplier on Dashboard page "true"
    Then Show title on Discoverable Supplier page "Discover Suppliers"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Invite Supplier page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Invite Supplier on Dashboard page "true"
    Then Show title on Invite Supplier page "Invite Supplier"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Manage Approvals page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Manage Approvals on Dashboard page "true"
    Then Show title on Manage Approvals page "Manage Approvals"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on My Supplier Extract page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on My Supplier Extract on Dashboard page "true"
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Manage Contacts page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Profile tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 5 seconds
    And Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 25 seconds
    Then Click on "Suppliers" Down arrow on Dashboard page
    Then Click on "Company" Down arrow on Dashboard
    #Then Show Profile tab on Dashboard page "true"
    #Then Profile tab clickable on Dashboard page "true"
    Then Click on Profile tab on Dashboard page "true"
    Then Show title on Profile tab page "Basic Information"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Manage Questionnaire tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaire on Dashboard page "true"
    Then Show title on Manage Questionnaire page "Manage Questionnaire"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Configure Approvals tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Configure Approvals on Dashboard page "true"
    Then Show title on Configure Approvals page "Configure Workflows"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Manage Users tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users on Dashboard page "true"
    Then Show title on Manage Users page "Manage Users"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify SSO Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on SSO Configuration on Dashboard page "true"
    Then Show title on SSO Configuration page "SSO Configuration"
    And Logout from the system

  #@Regression @Dashboard @Buyer @BuyerDashboard
  Scenario: Verify Revalidation Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    When Click on Collapse Icon for Suppliers
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Revalidation Configuration on Dashboard page "true"
    Then Show title on Revalidation Configuration page "Revalidation Configuration"
    And Logout from the system
 
  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Password Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration on Dashboard page "true"
    Then Show title on Password Configuration page "Password Configuration"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Bulk Upload tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Bulk Upload on Dashboard page "true"
    Then Show title on Bulk Upload page "Bulk Upload"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Supplier Watchlist tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Supplier Watchlist on Dashboard page "true"
    Then Show title on Supplier Watchlist page "Supplier Watchlist"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Notifications Preferences tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Notifications Preferences on Dashboard page "true"
    Then Show title on Notifications Preferences page "Notifications Preferences"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Support tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Support on Dashboard page "true"
    Then Show title on Support page "Support"
    And Logout from the system

  #SUPPLIER DAHSBOARD
  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Notifications page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Notifications on Supplier Dashboard page "true"
    Then Show title "Notifications" on Supplier Notification page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on My Buyers page for Supplier
    When Enter Supplier Email in Email Address field
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on My Buyers Nav link
    Then Show title "My Buyers" on My Buyer page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Profile page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Basic Information on Dashboard page "true"
    Then Show title on Profile page "Basic Information"
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on External Identifiers page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on External Identifiers on Supplier Dashboard page "true"
    Then Show title "External Identifiers" on Supplier External Identifiers page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Management page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Management on Supplier Dashboard page "true"
    Then Show title "Management" on Supplier Management page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Ownership page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Ownership on Supplier Dashboard page "true"
    Then Show title "Add Ownership" on Supplier Ownership page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Corporate Relationship page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Corporate Relationship on Supplier Dashboard page "true"
    Then Show title "Corporate Relationship" on Supplier Corporate Relationship page
    And Logout from the system

  #@Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI
  Scenario: Verify title on Review and Publish page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Review and Publish on Supplier Dashboard page "true"
    Then Show title "Review and Publish" on Supplier Review and Publish page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Questionnaires page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Questionnaires Nav link
    Then Click on Questionnaires on Dashboard page "true"
    Then Show title on Questionnaires page "Assigned Questionnaires"
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Contacts and Locations page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Contacts and Locations on Supplier Dashboard page "true"
    Then Show title "Contacts and Locations" on Supplier Contacts and Locations page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Bank Account page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Bank Account Nav link
    Then Click on Bank Account on Dashboard page "true"
    Then Show title on Bank Account page "Bank Account Information"
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Document Manager page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Your profile on Supplier Dashboard
    Then Click on Document Manager on Supplier Dashboard page "true"
    Then Show title "Document Manager" on Supplier Document Manager page
    And Logout from the system

  @Regression @Dashboard @Supplier @SupplierDashboard @QuickSanity
  Scenario: Verify title on Manage Users page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    When Click on Collapse Icon for Suppliers page
    Then Click on "Admin Actions" Down arrow on Dashboard
    And Click on Manage Users Nav link for Suppliers
    Then Show Invite a New User button on Manage Users page "true"
    And Logout from the system

  #@Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Digital Keys page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Digital Keys on Supplier Dashboard page "true"
    Then Show title "Digital Keys" on Supplier Digital Keys page
    And Logout from the system

  @Smoke @Regression @Dashboard @Supplier @SupplierDashboard @CDCI @QuickSanity
  Scenario: Verify title on Help page for Supplier
    When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Help Nav link
    Then Show title on Help page "Support Center"
    And Logout from the system
