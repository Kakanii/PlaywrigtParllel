Feature: IBM Buyer Roles

  #IBMBuyerRole
  #@EDIRole @Buyer@PMRole @ERBRole @IBRole @ReadOnlyAdmin @ProcurementManager @TrustComplinaceRole @readonlyManageusertab @ERPagination
  Background: Login as a Buyer
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard option on Dashboard page "true"
    Then Click Upon Dashboard option on Dashboard page
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Notifications menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications option on Dashboard page "true"
    Then Click Upon Notifications option on Dashboard page
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers option on Dashboard page "true"
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Supplier" Down arrow on Dashboard
    Then Show My Suppliers option on Dashboard page "true"
    Then My Suppliers option clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify B2BProfile menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show B2BProfile title on Dashboard page "true"
    Then B2BProfile title clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify ContactInfo menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "B2B Config" Down arrow on Dashboard
    Then Show ContactInfo option on Dashboard page "true"
    Then ContactInfo option clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify B2BConfig menu on Dashboard page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "B2B Config" Down arrow on Dashboard
    Then Show B2BConfig option on Dashboard page "true"
    Then B2BConfig option clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard menu on Dashboard page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard on Dashboard page "true"
    Then Click Upon Dashboard menu on Dashboard page
    Then Logout from the system

  @Regression @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Notifications menu on Dashboard page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications on Dashboard page "true"
    Then Click Upon Notifications on Dashboard page
    Then Logout from the system

  @Regression @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label on Dashboard page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers on Dashboard page "true"
    Then Logout from the system

  @Regression @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers menu on Dashboard page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Supplier" Down arrow on Dashboard
    Then Show My Suppliers on Dashboard page "true"
    Then My Suppliers clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @PMRole @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard menu on Dashboard page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard menu on Dashboard page "true"
    Then Click Upon Dashboard tab on Dashboard page
    Then Logout from the system

  @Regression @PMRole @IBMBuyerRole @Buyer
  Scenario: Verify Notifications menu on Dashboard page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications menu on Dashboard page "true"
    Then Click Upon Notifications tab on Dashboard page
    Then Logout from the system

  @Regression @PMRole @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label on Dashboard page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers title on Dashboard page "true"
    Then Logout from the system

  @Regression @PMRole @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers menu on Dashboard page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show My Suppliers menu on Dashboard page "true"
    Then My Suppliers menu clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify title on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard" on the Dashboard page
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard tab on Dashboard page "true"
    Then Dashboard tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Notifications tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Logout from the system
    Then Clear browser cookie

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label visibility on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers label on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Supplier" Down arrow on Dashboard
    Then Show My Suppliers tab on Dashboard page "true"
    Then My Suppliers tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Discover tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Manage Questionnaires tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Manage Questionnaires tab on Dashboard page "true"
    Then Manage Questionnaires tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Admin Actions label visibility on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Admin Actions label on Dashboard page "true"
    Then Logout from the system

  @Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier Data Upload tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Supplier Data Upload tab on Dashboard page "true"
    Then Supplier Data Upload tab clickable on Dashboard page "true"
    Then Logout from the system

  #Contact info tab removed
  #@Regression @IBRole @IBMBuyerRole @Buyer
  Scenario: Verify Contact Info tab visibility and status on Dashboard page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Contact Info tab on Dashboard page "true"
    Then Contact Info tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify title on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard" on the Dashboard page
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard tab visibility and status on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard tab on Dashboard page "true"
    Then Dashboard tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Notifications tab visibility and status on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Logout from the system
    Then Clear browser cookie

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers label on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers tab visibility and status on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show My Suppliers tab on Dashboard page "true"
    Then My Suppliers tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Discover tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Company label visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Company label on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Profile tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Show Profile tab on Dashboard page "true"
    Then Profile tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Manage Questionnaires tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Manage Questionnaires tab on Dashboard page "true"
    Then Manage Questionnaires tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Admin Actions label visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Admin Actions label on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Manage Users tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Manage Users tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Supplier Data Upload tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Show Supplier Data Upload tab on Dashboard page "true"
    Then Supplier Data Upload tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify B2B Profile label visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show B2B Profile label on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify Contact Info tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "B2B Config" Down arrow on Dashboard
    Then Show Contact Info tab on Dashboard page "true"
    Then Contact Info tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @ReadOnlyAdmin @IBMBuyerRole @Buyer
  Scenario: Verify B2B Config tab visibility on Dashboard page
    Then Enter data in Email Address field "readonly@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "B2B Config" Down arrow on Dashboard
    Then Show B2B Config tab on Dashboard page "true"
    Then B2B Config tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @TrustComplinaceRole @IBMBuyerRole @Buyer
  Scenario: Verify title on Dashboard page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title "My Dashboard" on the Dashboard page
    Then Logout from the system

  @Regression @TrustComplinaceRole @IBMBuyerRole @Buyer
  Scenario: Verify Dashboard tab visibility and status on Dashboard page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Dashboard tab on Dashboard page "true"
    Then Dashboard tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @TrustComplinaceRole @IBMBuyerRole @Buyer
  Scenario: Verify Notifications tab visibility on Dashboard page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Logout from the system
    Then Clear browser cookie

  @Regression @TrustComplinaceRole @IBMBuyerRole @Buyer
  Scenario: Verify Suppliers label visibility on Dashboard page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Suppliers label on Dashboard page "true"
    Then Logout from the system
 
  @Regression @TrustComplinaceRole @IBMBuyerRole @Buyer
  Scenario: Verify My Suppliers tab visibility on Dashboard page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show My Suppliers tab on Dashboard page "true"
    Then My Suppliers tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify the Users tab visibility on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Showing Users tab on Manage Users page "true"
    Then Logout from the system

  @Regression @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify All Users tab visibility and status on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Showing All Users tab on Manage Users page "true"
    Then All Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Regression @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Active Users tab visibility and status on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Showing Active Users tab on Manage Users page "true"
    Then Active Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Smoke @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Active Users tab onClick and  Active Users tab Last logged message on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Active Users tab on Manage Users page
    Then Showing Active Users with status "Last Logged In"
    Then Logout from the system

  @Regression @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Pending Users tab visibility and status on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Showing Pending Users tab on Manage Users page "true"
    Then Pending Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Smoke @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Pending Users tab onClick on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Pending Users tab on Manage Users page
    Then Logout from the system

  @Regression @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Deleted Users tab visibility and status on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Showing Deleted Users tab on Manage Users page "true"
    Then Deleted Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Smoke @readonlyManageusertab @IBMBuyerRole @Buyer
  Scenario: Verify Deleted Users tab onClick on Manage Users page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Deleted Users tab on Manage Users page
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility on My Supplier page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    #Then Prev arrow button enabled on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on My Supplier page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on My Supplier page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 200
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    #Then Show Prev arrow button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on My Supplier page if row per page is 200
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @ERPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Smoke @ProcurementManager @IBMBuyerRole @Buyer
  Scenario: Verify if Buyer role Procurement manager is able to search Supplier with Company name on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Enter Supplier name in Search field "Marcus France final QA"
    Then Click on Enter Key
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @Smoke @ProcurementManager @IBMBuyerRole @Buyer
  Scenario: Verify if Buyer role Procurement manager is able to search supplier with Email Address on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "marcusfrancefinalqa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @Smoke @ProcurementManager @IBMBuyerRole @Buyer
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "Connected Suppliers"
    ##Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Smoke @ProcurementManager @IBMBuyerRole @Buyer
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Change row per page to "500"
    Then Next arrow button enabled on My Suppliers page "true" 
    Then Click on Next arrow button on My Suppliers page
    Then Click on Prev arrow button on My Suppliers page
     Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Smoke @ProcurementManager @IBMBuyerRole @Buyer
  Scenario: Verify if Buyer role Procurement manager is able to navigate through pagination on My Suppliers page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the High risk option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Enter Supplier name in Search field "Marcus France final QA"
    Then Click on Enter Key
    Then Show Supplier in search result "Marcus France final QA"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Export Reg"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system
# email address search
  #@Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "exportreg@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Export"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Reg"
    Then Click on Enter Key
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Export"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Reg"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "exportreg@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Export"
    Then Enter Invitee Last Name "Reg"
    Then Enter Invitee Email "exportreg@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "Export Reg"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Pending Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Returned to Supplier radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Returned to Supplier"
    Then Logout from the system

  @Smoke @ERSearch @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Regression @ERSearch @ERBRole @IBMBuyerRole @Buyer@QGFilter 
  Scenario: Verify Supplier search while selecting erb checkbox under suppliergroupquestionnaire dropdown
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the erb option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Show selected ERSupplier in erqgsearch results "erb"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Prev button visibility on My Supplier page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    #Then Prev arrow button enabled on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button visibility on My Supplier page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 200
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    ##Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button visibility on My Supplier page if row per page is 200
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @ERPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @BuyerPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    ##Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @BuyerPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @BuyerPagination @EDIRole @IBMBuyerRole @Buyer@EDIPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 500
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "AutomationEDI"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system
#email  adress search
  #@Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "edia@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "EDI"
    Then Click on Enter Key
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "EDI"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "edia@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Automation"
    Then Enter Invitee Last Name "EDI"
    Then Enter Invitee Email "edia@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "AutomationEDI"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Pending Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted Invite"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Returned to Supplier radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Returned to Supplier"
    Then Logout from the system

  @Smoke @EDISearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @Regression @EDISearch @EDIRole @IBMBuyerRole @Buyer@EDDIQGFilter 
  Scenario: Verify Supplier search while selecting erb checkbox under suppliergroupquestionnaire dropdown
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the erb option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Show selected ERSupplier in erqgsearch results "erb"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Prev button visibility on My Supplier page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    ##Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Next button visibility on My Supplier page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system
 
  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 200
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    ##Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination
  Scenario: Verify Next button visibility on My Supplier page if row per page is 200
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Next button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@tcusrPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 500
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@TCUSRQGFilter 
  Scenario: Verify Supplier search while selecting erb checkbox under suppliergroupquestionnaire dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the erb option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Show selected ERSupplier in erqgsearch results "erb"
    Then Logout from the system

  @Smoke @TCUSRSearch @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "TrustComplianceAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system
# Email address search
  #@Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "trusta@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Trust"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system
# Last name search
  #@Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system
 
  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "trusta@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Enter Invitee Last Name "Automation"
    Then Enter Invitee Email "trusta@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "TrustComplianceAutomation"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Pending Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system
 
  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Returned to Supplier radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Returned to Supplier"
    Then Logout from the system

  @Smoke @TCUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Prev button visibility on My Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button visibility on My Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 200
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button visibility on My Supplier page if row per page is 200
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 500
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "InternalBuyerAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system
# Email address search
  #@Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "iba@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Internal"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system
# Last name search
  #@Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Buyer"
    Then Click on Enter Key
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Internal"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Buyer"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "iba@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system
# Email search
  #@Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "Trust"
    Then Enter Invitee Last Name "Buyer"
    Then Enter Invitee Email "iba@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "InternalBuyerAutomation"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Pending Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Pending Invite"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted Invite"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Declined Invite"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Returned to Supplier radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Returned to Supplier"
    Then Logout from the system

  @Smoke @IBUSRSearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@IBUSRQGFilter 
  Scenario: Verify Supplier search while selecting erb checkbox under suppliergroupquestionnaire dropdown
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the erb option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Show selected ERSupplier in erqgsearch results "erb"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Prev button visibility on My Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button visibility on My Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 200
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button visibility on My Supplier page if row per page is 200
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 200
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "200"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Prev button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    #Then Show Prev button on My Suppliers page "true"
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button visibility and status on My Supplier page if row per page is 500
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAPagination 
  Scenario: Verify Next button and Prev button functionality on My Supplier page if row per page is 500
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Change row per page to "500"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Prev arrow button disabled on My Suppliers page "false"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using company name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "ROAAutomation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system
# email address search
  #@Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using email address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "roa@mailinator.com"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "ROA"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system
# Last Name search
 # @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "Automation"
    Then Click on Enter Key
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search using invalid supplier name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Enter Supplier name in Search field "6uiuiuiuas"
    Then Click on Enter Key
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "ROA"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "Automation"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Last Name "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "roa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invalid Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "TaaafaIadada"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Special characters in Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee Email "#$%@&$%"
    Then Click on Apply button in User dropdown
    Then Show no suppliers message "There are no suppliers that match that status"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search with Invitee First Name Invite Last Name and Invitee Email
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter Invitee First Name "ROA"
    Then Enter Invitee Last Name "Automation"
    Then Enter Invitee Email "roa@mailinator.com"
    Then Click on Apply button in User dropdown
    Then Show ER Supplier in search result "ROAAutomation"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Sent Invites radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Pending Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Pending Invite"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Accepted Invites radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Accepted Invite"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Declined radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Declined Invite"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Ready For Review radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Ready For Review"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Returned to Supplier radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Returned to Supplier"
    Then Logout from the system

  @Smoke @ROASearch @EDIRole @IBMBuyerRole @Buyer
  Scenario: Verify Supplier search while selecting Onboarded radio button under Status dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected ERSupplier in statussearch results "Onboarded"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer@ROAQGFilter 
  Scenario: Verify Supplier search while selecting erb checkbox under suppliergroupquestionnaire dropdown
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on filter by Supplier Questionnaire Group
    Then select the erb option in the Supplier Questionnaire Group filter
    Then Click on the Apply button on the supplier group filter drop down
    Then Show selected ERSupplier in erqgsearch results "erb"
    Then Logout from the system

  @Regression  @IBMmanageusers @Buyer@readonlysearch @IBMBuyerRole
  Scenario: Verify Manage Active Users search by Fist Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter User First Name in Search field "John"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "John"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Solomon"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by invalid data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by First Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "John"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "John"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by First Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by First Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by First Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Last Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Trendy"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Last Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Solomon"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch  
  Scenario: Verify Manage Active Users search by Last Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Last Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "chadalavada"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by Email Address using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Kiran Chadalavada in Search results "Role: Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@readonlysearch 
  Scenario: Verify Manage Active Users search by User Role using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by First Name 
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter User Email Address in Search field "christophernoel@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "christophernoel@mailinator.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show Read Only Admin role in Search results "Role: Read Only Admin"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by invalid data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Pending Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter pending users data in Search field "aaj@chainyard.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Deleted Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Enter deleted users data in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr
  Scenario: Verify Manage Pending Users search by First Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by First Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by First Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by First Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Last Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Noel"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "noel"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "pendinguser@chainyard.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "pendinguser@chainyard.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by Email Address using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@pendingusr 
  Scenario: Verify Manage Pending Users search by User Role using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Fist Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter User Email Address in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "removeuserur@mailinator.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by invalid data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Pending Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter pending users data in Search field "ajay.mudunuri@chainyard.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Deleted Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Enter deleted users data in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show Remove User in Search Results Page "Email: removeuserur@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by First Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User Ajay Mudunuri in Search results "Ajay Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by First Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by First Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by First Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Read only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Last Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "deleteduser"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "deleteduseradministrator@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "deleteduseradministrator@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by Email Address using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@delusr 
  Scenario: Verify Manage Deleted Users search by User Role using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Fist Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Ajay"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter User Email Address in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "removeuserur@mailinator.com"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by invalid data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Pending Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter pending users data in Search field "amyss@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "amyss@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Deleted Users
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Enter deleted users data in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show Remove User in Search Results Page "Email: removeuserur@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by First Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User Ajay Mudunuri in Search results "Ajay Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by First Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by First Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by First Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by First Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage Deleted Users search by Last Name using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Last Name using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Mudunuri"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Last Name using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Last Name using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter role in Search field "Read only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Read Only Admin"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Last Name using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Amy"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "amyss@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "deleteduser"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "deleteduseradministrator@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "deleteduseradministrator@mailinator.com"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by Email Address using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role using First Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role using Last Name
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role using Email Address
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Smoke @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role using User Role
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Logout from the system

  @Regression @IBMBuyerRole@IBMmanageusers @Buyer@allusr 
  Scenario: Verify Manage All Users search by User Role using Invalid Data
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @Buyer@td @IBMBuyerRole
  Scenario: Verify Trusted Domains tab availability and click the tab for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Check the Title of the Trusted Domains tab "Trusted Domains"
    Then Click on Trusted Domains tab
    Then Logout from the system

  @Regression @Buyer@td @IBMBuyerRole
  Scenario: Verify Trusted Domains tab availability and click the tab for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then click on Trusted Domain Tab
    Then Check the Description of Tab "true"
    Then Click on Trusted Domains tab
    Then Logout from the system

  @Regression @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Go to my Notifications visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Go to my Notifications on Dashboard page "true"
    Then Go to my Notifications clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify title on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    Then Logout from the system

  @Regression @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Accepted Invites" on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted Invite"
    Then Logout from the system

  @Regression @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Ready For Review" on Dashboard page "true"
    Then "Ready For Review" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Ready For Review" on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Returned to Supplier" on Dashboard page "true"
    Then "Returned to Supplier" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@ROADashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Onboarded" on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

 @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button enabled "true"
    Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for ROA
  Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system
 
  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Mark as Read on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Read option
    Then Click on unread notifications
    #Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole @Vyshnavi 
  Scenario: Verify Mark as  Unread on Notifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then Click on Actions button
    Then Select Mark As Unread option
    Then Click on read notifications
    Then show no unread notifications "You don't have any notifications matching this status"
    Then Logout from the system
 
  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify unread notifications default checkbox on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

      @Smoke @Buyer @notifications @IBMBuyerRole
   Scenario: Verify Actions button default functionality on unreadNotifications page for ROA
     Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
     Then Click on Continue button on Login page
     Then Enter data in Password field
     Then Click on Sign In button on Login
     Then Click on Go to my notifications on Dashboard page "true"
     Then Click on unread notifications
     Then Notifications Checkbox Unchecked on Notifications Page "false"
     Then Verify Actions button disabled "false"
     Then Logout from the system
  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button enabled "true"
    Then Logout from the system

  # @Smoke @Buyer @notifications @IBMBuyerRole@Vyshnavi 
  # Scenario: Verify Mark as Read on unread Notifications page for ROA
  #   Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Click on Go to my notifications on Dashboard page "true"
  #   Then Click on unread notifications
  #   Then Click on Main checkbox
  #   Then Click on Actions button
  #   Then Select Mark As Read option
  #   Then show no unread notifications "You don't have any notifications matching this status"
  #   Then Logout from the system

  
  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify read notifications default checkbox on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for ROA
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  # @Smoke @Buyer @notifications @IBMBuyerRole@Vyshnavi 
  # Scenario: Verify Mark as  Unread on Notifications page for ROA
  #   Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Click on Go to my notifications on Dashboard page "true"
  #   Then Click on read notifications
  #   Then Click on Main checkbox
  #   Then Click on Actions button
  #   Then Select Mark As Unread option
  #   Then show no unread notifications "You don't have any notifications matching this status"
  #   Then Logout from the system

  @Smoke @Buyer @notifications @IBMBuyerRole
  Scenario: Verify settings label on Notifications page for Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on settings on Notifications
    Then verify settings tab label on Notifications page "true"
    Then Logout from the system

  # @Smoke @Buyer @notifications @IBMBuyerRole@Vyshnavi 
  # Scenario: Verify default checkbox Unchecked on Notifications page for Buyer
  #   Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Click on Go to my notifications on Dashboard page "true"
  #   Then Click on settings on Notifications
  #   Then Verify default checkbox Unchecked "false"
  #   Then Logout from the system

 @Regression @Buyer @ROADiscover  @IBMBuyerRole
  Scenario: Verify Discover tab visibility and status
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    Then Logout from the system

@Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify  title, label, filter  visibility and status on Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Show "Discoverable Suppliers" title on Dicover page "true"
    Then Show "Filter by:" label on Discover page "true"
    Then Show "Country" filter on Discover page "true"
    Then Show "UNSPSC" filter on Discover page "true"
    Then Show "NAICS" filter on Discover page "true"
    Then Verify "Country" filter clickable "true"
    Then Verify "UNSPSC" filter clickable "true"
    Then Verify "NAICS" filter clickable "true"
    Then Show Search field in discover page "true"
    Then Verify Search field enabled in discover page "true"
    Then Show Company Name column label in discover page "true"
    Then Show Date Established column label in discover page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify Countries dropdown visibility and status in Country filter in Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Countries dropdown in Country filter "true"
    Then Verify Countries drop down clickable "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify Cancel button visibility and status in Country filter in Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Cancel button in Country filter "true"
    Then Verify Cancel button clickable in Country filter "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify Apply button visibility in Country filter in Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Apply button in Country filter "true"
    Then Verify Apply button disabled "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify Apply button status when Country is selected in Country filter in discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Verify Apply button enabled "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify UNSPSC input field status in UNSPSC filter in Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Show UNSPSC input field in UNSPSC filter "true"
    Then Verify UNSPSC input field clickable in UNSPSC filter "true"
    Then Click on Cancel button in "unspc"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify NAICS input field visibility in NAICS filter in Discover page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Show NAICS input field in NAICS filter "true"
    Then Verify NAICS input field clickable in NAICS filter "true"
    Then Click on Cancel button in "naics"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify search result description when no supplier found in discover search using Country filter
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "Afghanistan" in Countries dropdown
    Then Click Apply button in "country"
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify search result description when no supplier found in discover search using UNSPSC filter
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc" 
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify search result description when no supplier found in discover search using NAICS filter
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics" 
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button visibility when Countries filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country"
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button visibility when UNSPSC filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc"
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button visibility when NAICS filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics" 
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button status when Countries filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country"
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button status when UNSPSC filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc" 
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Regression @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify "Clear all filters" button visibility when NAICS filter is selected
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics" 
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Smoke @Buyer @ROADiscover  @IBMBuyerRoles
  Scenario: Verify Country filter functionality in discover page
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country" 
    Then Search IBM supplier in search field "220420test3"
    Then Verify "220420test3" supplier visibility in search results "true"
    Then Logout from the system

  #UAT and QA data
  #@Smoke @Buyer @IBMBuyerRole
  Scenario: Verify UNSPSC filter functionality in discover page
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "14101501"
    Then Click Apply button in "unspc" 
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @Buyer @ROADiscover  @IBMBuyerRole
  Scenario: Verify NAICS filter functionality in discover page
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "3221"
    Then Click Apply button in "naics"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify IBM supplier search in discover page using Nokia Buyer
    When Enter Nokia Email address in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "220420test3"
    Then Verify "220420test3" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @Buyer @ROADiscover  @IBMBuyerRole
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @Buyer @ROADiscover @IBMBuyerRole
  Scenario: Verify Nokia supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @ROADiscoverPagination
  Scenario: Verify Prev button visibility  on Discover Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @ROADiscoverPagination
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @ROADiscoverPagination
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @ROADiscoverPagination 
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @ROADiscoverPagination
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @ROADiscoverPagination
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @ROADiscoverPagination 
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @ROADiscoverPagination 
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "myreadonlyuser@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Total visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Total" on Dashboard page "true"
    Then "Total" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Sent Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Pending Invites" on Dashboard page "true"
    Then "Pending Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Ready For Review on Dashboard page "true"
    Then Ready For Review clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Ready For Review on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Returned to Supplier on Dashboard page "true"
    Then Returned to Supplier clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer@procurementbuyerDashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" notclickable on Dashboard page "false"
    Then Logout from the system

@Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications  @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
  Then Enter data in Email Address field "procurementbuyer@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

 @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
  Then Enter data in Email Address field "procurementbuyer@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on unread notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system
 
   @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
   Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer@procurementbuyernotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
  Then Enter data in Email Address field "procurementbuyer@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on read notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

@Regression @PBNotificationsPagination  @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility on Notifications page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

 @Regression @PBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @PBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @PBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer@IBMBuyerRole
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 20
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Logout from the system

  @Regression @PBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer@IBMBuyerRole 
  Scenario: Verify Next button and Prev button functionality on Notifications page if row per page is 50
    Then Enter data in Email Address field "procurementbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Logout from the system

  # @Regression @Buyer@TCDashboard @IBMBuyerRole
  # Scenario: Verify Total visibility and status on Dashboard page for Buyer
  #   Then Enter data in Email Address field "tcusr@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Show "Total" on Dashboard page "true"
  #   Then "Total" notclickable on Dashboard page "false"
  #   Then Logout from the system

  @Regression @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Sent Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Pending Invites" on Dashboard page "true"
    Then "Pending Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Ready For Review" on Dashboard page "true"
    Then "Ready For Review" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Ready For Review" on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Returned to Supplier" on Dashboard page "true"
    Then "Returned to Supplier" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer@TCDashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" notclickable on Dashboard page "false"
    Then Logout from the system

@Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
  Then Enter data in Email Address field "tcusr@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

 @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
  Then Enter data in Email Address field "tcusr@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on unread notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @Smoke @Buyer@tcusrnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @tcusrnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
  Then Enter data in Email Address field "tcusr@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on read notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

@Regression @TCNotificationsPagination  @IBMBuyerRole @Buyer @IBMBuyerRole
  Scenario: Verify Prev button visibility on Notifications page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

 @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system


  @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 20
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page if row per page is 20
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page if row per page is 20
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

     @Regression @TCNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 50
    Then Enter data in Email Address field "tcusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Logout from the system

  
#  @Regression @Buyer@EDIDashboard
#   Scenario: Verify Go to my Notifications visibility and status on Dashboard page for EDIbuyer
#     Then Enter data in Email Address field "tcusr@mailinator.com"
#     Then Click on Continue button on Login page
#     Then Enter data in Password field
#     Then Click on Sign In button on Login
#     Then Show Go to my Notifications on Dashboard page "true"
#     Then Go to my Notifications clickable on Dashboard page "true"
#     Then Logout from the system

#   @Smoke @Buyer@EDIDashboard
#   Scenario: Verify title on Notifications page for EDIbuyer
#     Then Enter data in Email Address field "edi@mailinator.com"
#     Then Click on Continue button on Login page
#     Then Enter data in Password field
#     Then Click on Sign In button on Login
#     Then Click on Go to my notifications on Dashboard page "true"
#     Then Show title on Notifications page "Notifications"
#     Then Logout from the system

  # @Regression @Buyer@EDIDashboard @IBMBuyerRole
  # Scenario: Verify Total visibility and status on Dashboard page for EDIbuyer
  #   Then Enter data in Email Address field "edi@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Show "Total" on Dashboard page "true"
  #   Then "Total" notclickable on Dashboard page "false"
  #   Then Logout from the system

  @Regression @Buyer@EDIDashboard @IBMBuyerRole
  Scenario: Verify Sent Invites visibility and status on Dashboard page for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Pending Invites" on Dashboard page "true"
    Then "Pending Invites" notclickable on Dashboard page "true"
    Then Logout from the system

  @Regression @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" clickable on Dashboard page "false"
    Then Logout from the system

  @Smoke @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Accepted Invites" on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @Regression @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Ready For Review" on Dashboard page "true"
    Then "Ready For Review" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Ready For Review" on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Returned to Supplier" on Dashboard page "true"
    Then "Returned to Supplier" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @EDIDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for EDIbuyer
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Onboarded" on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

@Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
  Then Enter data in Email Address field "edi@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system


 @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
  Then Enter data in Email Address field "edi@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on unread notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @EDInotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
  Then Enter data in Email Address field "edi@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on read notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

  @Regression @EDINotificationsPagination  @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility on Notifications page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

 @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 20
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer 
  Scenario: Verify Next button visibility on Notifications page if row per page is 20
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page if row per page is 20
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @EDINotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 50
    Then Enter data in Email Address field "edi@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Logout from the system

  # @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  # Scenario: Verify Total visibility and status on Dashboard page for Buyer
  #   Then Enter data in Email Address field "erb@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Show "Total" on Dashboard page "true"
  #   Then "Total" notclickable on Dashboard page "false"
  #   Then Logout from the system

  @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Sent Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Pending Invites" on Dashboard page "true"
    Then "Pending Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" notclickable on Dashboard page "false"
    Then Logout from the system

  @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Ready For Review" on Dashboard page "true"
    Then "Ready For Review" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Ready For Review" on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Returned to Supplier" on Dashboard page "true"
    Then "Returned to Supplier" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer @ERUSRDashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" notclickable on Dashboard page "false"
    Then Logout from the system
 
# @Smoke @Buyer @ERBnotifications
#   Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
#     Then Enter data in Email Address field "erb@mailinator.com"
#     Then Click on Continue button on Login page
#     Then Enter data in Password field
#     Then Click on Sign In button on Login
#     Then Click on Go to my notifications on Dashboard page "true"
#     Then Click on Main checkbox
#     Then verify Actions button
#     Then Logout from the system

#   @Smoke @Buyer @ERBnotifications
#   Scenario: Verify Checkbox default functionality on Notifications page for tcusr
#     Then Enter data in Email Address field "erb@mailinator.com"
#     Then Click on Continue button on Login page
#     Then Enter data in Password field
#     Then Click on Sign In button on Login
#     Then Click on Go to my notifications on Dashboard page "true"
#     Then Notifications Checkbox Unchecked on Notifications Page "false"
#     Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
  Then Enter data in Email Address field "erb@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

 @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
  Then Enter data in Email Address field "erb@mailinator.com"
  Then Click on Continue button on Login page
  Then Enter data in Password field
  Then Click on Sign In button on Login
  Then Click on Go to my notifications on Dashboard page "true"
  Then Click on unread notifications
  Then Notifications Checkbox Unchecked on Notifications Page "false"
  Then Verify Actions button disabled "false"
  Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @ERBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

 @Regression @ERBNotificationsPagination  @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility on Notifications page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

 @Regression @ERBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @ERBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system
    
  @Regression @ERBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify  Notifications page if row per page is 20
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Logout from the system

  @Regression @ERBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 50
    Then Enter data in Email Address field "erb@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Logout from the system


  # @Regression @Buyer @IBDashboard
  # Scenario: Verify Go to my Notifications visibility and status on Dashboard page for Buyer
  #   Then Enter data in Email Address field "ibusr@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Show Go to my Notifications on Dashboard page "true"
  #   Then Go to my Notifications clickable on Dashboard page "true"
  #   Then Logout from the system

  # @Smoke @Buyer @IBDashboard
  # Scenario: Verify title on Notifications page for Buyer
  #   Then Enter data in Email Address field "ibusr@mailinator.com"
  #   Then Click on Continue button on Login page
  #   Then Enter data in Password field
  #   Then Click on Sign In button on Login
  #   Then Click on Go to my notifications on Dashboard page "true"
  #   Then Show title on Notifications page "Notifications"
  #   Then Logout from the system

  @Regression @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Accepted Invites visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Accepted Invites" on Dashboard page "true"
    Then "Accepted Invites" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Accepted Invites link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Accepted Invites" on Dashboard page "true"
    Then Show selected Supplier in search results "Accepted"
    Then Logout from the system

  @Regression @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Ready For Review visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Ready For Review" on Dashboard page "true"
    Then "Ready For Review" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Ready For Review link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Ready For Review" on Dashboard page "true"
    Then Show selected Supplier in search results "Ready For Review"
    Then Logout from the system

  @Regression @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Returned to Supplier visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Returned to Supplier" on Dashboard page "true"
    Then "Returned to Supplier" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Returned to Supplier link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Returned to Supplier" on Dashboard page "true"
    Then Show selected Supplier in search results "Returned to Supplier"
    Then Logout from the system

  @Regression @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Onboarded visibility and status on Dashboard page for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show "Onboarded" on Dashboard page "true"
    Then "Onboarded" clickable on Dashboard page "true"
    Then Logout from the system

  @Smoke @Buyer @IBDashboard @IBMBuyerRole
  Scenario: Verify Supplier Status on My Suppliers page by Clicking on Onboarded link on Dashboard for Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Onboarded" on Dashboard page "true"
    Then Show selected Supplier in search results "Onboarded"
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on Notifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

 @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Click on Main checkbox
    Then verify Actions button
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on unreadNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on unread notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system


  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button visibility after checkbox checked on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Click on Main checkbox
    Then verify Actions button on readNotifications
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Checkbox default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Logout from the system

  @Smoke @Buyer @IBnotifications @IBMBuyerRole
  Scenario: Verify Actions button default functionality on readNotifications page for tcusr
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on read notifications
    Then Notifications Checkbox Unchecked on Notifications Page "false"
    Then Verify Actions button disabled "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination  @IBMBuyerRole @Buyer 
  Scenario: Verify Prev button visibility on Notifications page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button and Prev button functionality on Notifications page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to twenty
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Prev button visibility and status on Notifications page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Show Prev button on Notifications page "true"
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer
  Scenario: Verify Next button visibility on Notifications page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Show Next button on Notifications page "true"
    Then Next button enabled on Notifications page "true"
    Then Logout from the system

  @Regression @IBNotificationsPagination @ERBRole @IBMBuyerRole @Buyer 
  Scenario: Verify Next button and Prev button functionality on Notifications page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Go to my notifications on Dashboard page "true"
    Then Change row per page to fifty on Notifications
    Then Click on Next button on Notifications page
    Then Prev button enabled on Notifications page "true"
    Then Click on Prev button on Notifications page
    Then Prev button disabled on Notifications page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover  
  Scenario: Verify Discover tab visibility and status
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Show Discover tab on Dashboard page "true"
    Then Discover tab clickable on Dashboard page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify  title, label, filter  visibility and status on Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Show "Discoverable Suppliers" title on Dicover page "true"
    Then Show "Filter by:" label on Discover page "true"
    Then Show "Country" filter on Discover page "true"
    Then Show "UNSPSC" filter on Discover page "true"
    Then Show "NAICS" filter on Discover page "true"
    Then Verify "Country" filter clickable "true"
    Then Verify "UNSPSC" filter clickable "true"
    Then Verify "NAICS" filter clickable "true"
    Then Show Search field in discover page "true"
    Then Verify Search field enabled in discover page "true"
    Then Show Company Name column label in discover page "true"
    Then Show Date Established column label in discover page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify Countries dropdown visibility and status in Country filter in Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Countries dropdown in Country filter "true"
    Then Verify Countries drop down clickable "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify Cancel button visibility and status in Country filter in Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Cancel button in Country filter "true"
    Then Verify Cancel button clickable in Country filter "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify Apply button visibility in Country filter in Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Show Apply button in Country filter "true"
    Then Verify Apply button disabled "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify Apply button status when Country is selected in Country filter in discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Verify Apply button enabled "true"
    Then Click on Cancel button in "country"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify UNSPSC input field status in UNSPSC filter in Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Show UNSPSC input field in UNSPSC filter "true"
    Then Verify UNSPSC input field clickable in UNSPSC filter "true"
    Then Click on Cancel button in "unspc"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify NAICS input field visibility in NAICS filter in Discover page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Show NAICS input field in NAICS filter "true"
    Then Verify NAICS input field clickable in NAICS filter "true"
    Then Click on Cancel button in "naics"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify search result description when no supplier found in discover search using Country filter
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "Afghanistan" in Countries dropdown
    Then Click Apply button in "country"
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify search result description when no supplier found in discover search using UNSPSC filter
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc" 
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify search result description when no supplier found in discover search using NAICS filter
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics"
    Then Verify search result description "We were unable to find any companies matching your search."
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify "Clear all filters" button visibility when Countries filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country"
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify "Clear all filters" button visibility when UNSPSC filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc" 
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify "Clear all filters" button visibility when NAICS filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics"
    Then Show Clear all filters button in page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify "Clear all filters" button status when Countries filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country"
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover 
  Scenario: Verify "Clear all filters" button status when UNSPSC filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "123456"
    Then Click Apply button in "unspc" 
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify "Clear all filters" button visibility when NAICS filter is selected
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "123456"
    Then Click Apply button in "naics"
    Then Verify Clear all filters button clickable in page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify Country filter functionality in discover page
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "Country" filter
    Then Select "United States of America" in Countries dropdown
    Then Click Apply button in "country"
    Then Search IBM supplier in search field "010420test2"
    Then Verify "010420test2" supplier visibility in search results "true"
    Then Logout from the system

  #UAT and QA data
  #@Smoke @IBMBuyerRole @Buyer
  Scenario: Verify UNSPSC filter functionality in discover page
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "UNSPSC" filter
    Then Enter UNSPSC number in UNSPSC filter "14101501"
    Then Click Apply button in "unspc" 
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify NAICS filter functionality in discover page
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on "NAICS" filter
    Then Enter NAICS number in NAICS filter "3221"
    Then Click Apply button in "naics"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify IBM supplier search in discover page using Nokia Buyer
    When Enter Nokia Email address in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search IBM supplier in search field "220420test3"
    Then Verify "220420test3" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify Nokia supplier search in discover page using IBM Buyer
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @Buyer @IBDiscover
  Scenario: Verify Nokia supplier search in discover page using Lenovo Buyer
    When Enter Nokia Email address in Email Address field "lenovobuyerdiscover@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Search Nokia supplier in search field "NokiaDiscoverSupplier"
    Then Verify "NokiaDiscoverSupplier" supplier visibility in search results "true"
    Then Logout from the system

  @Regression @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Prev button visibility  on Discover Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover 
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @IBMBuyerRole @DiscoverSuppliersPagination @Buyer @IBDiscover
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Enter data in Email Address field "ibusr@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Discover tab
    Then Change row per page to fifty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system
