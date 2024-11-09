Feature: Risk Insights

  # RiskInsights
  Background: Start the applicaiton
    Given Open the login page

  #D&B - Financial Strength Insights
  #@RiskInsights @TYSFunctionality @HotfixCheck @KK
  Scenario: I am able to see D&B Financial Strength Insights the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Financial Strength Insights" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Financial Strength Insights" panel
    Then Shows the title for D&B Financial Strength Insights app
    And Shows Failure Score in Financial Strength Insights app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Payment Insights
  #@RiskInsights @TYSFunctionality @HotfixCheck @KK
  Scenario: I am able to see D&B Payment Insights the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Payment Insights" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Payment Insights" panel
    Then Shows the title for D&B Payment Insights app
    And Shows Capital Details in Payment Insights app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Ownership Insight
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see D&B Ownership Insight the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kknokia@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "ALPHABET INC." Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Ownership Insight" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Ownership Insight" panel
    Then Shows the title for D&B Ownership Insight app
    And Shows Capital Details in Ownership Insight app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Company Financials
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see D&B Company Financials the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Company Financials" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Company Financials" panel
    Then Shows the title for D&B Company Financials app
    And Shows Financials to date in Company Financials app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Hierarchies & Connections
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see D&B Hierarchies & Connections the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Hierarchies & Connections" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Hierarchies & Connections" panel
    Then Shows the title for D&B Hierarchies & Connections app
    And Shows Supplier Name in Hierarchies & Connections app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Third Party Risk Assessment
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see D&B Third Party Risk Assessment the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Third Party Risk Assessment" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Third Party Risk Assessment" panel
    Then Shows the title for D&B Third Party Risk Assessment app
    And Shows Supplier Evaluation Risk Score in Third Party Risk Assessment app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Principals
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see D&B Principals the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kknokia@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "ALPHABET INC." Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Principals" in App Search field
    And Wait for 3 seconds
    And Expand "D&B Principals" panel
    Then Shows the title for D&B Principals app
    And Shows the Principals Summary in Principals app panel
    And Wait for 3 seconds
    Then Logout from the system

  #D&B - Company Information
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see D&B - Company Information the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "MCDONALD'S CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Company Information" in App Search field
    And Wait for 3 seconds
    And Expand D&B Company Information panel
    Then Shows the title for D&B - Company Information app
    #And Shows the Supplier name in Company Information app panel
    And Wait for 3 seconds
    Then Logout from the system

  #Moodys - Cyber risk rating by BitSight
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Moodys Cyber risk rating by BitSight the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "MCDONALD'S CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Cyber risk rating by BitSight" in App Search field
    And Wait for 3 seconds
    And Expand "Moody's - Cyber risk rating by BitSight" panel
    Then Shows the title for Moodys Cyber risk rating by BitSight app
    And Shows Cyber risk rating by BitSight title in app panel
    And Wait for 3 seconds
    Then Logout from the system

  #Moodys - Ownership
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Moodys Ownership the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "ASHOK LEYLAND LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Ownership Structure" in App Search field
    And Wait for 3 seconds
    And Expand "Moody's Ownership" panel
    Then Shows the title for Moodys Ownership app
    And Shows Supplier name in app panel
    And Wait for 3 seconds
    Then Logout from the system

  #Moodys - Probability Of Default
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Moodys - Probability Of Default the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "MCDONALD'S CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Probability Of Default" in App Search field
    And Wait for 3 seconds
    And Expand "Moody's - Probability Of Default" panel
    Then Shows the title for Moodys - Probability Of Default app
    And Shows Probability of Default title in app panel
    And Wait for 3 seconds
    Then Logout from the system

  #Moodys - ESG Risk Review
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Moodys - ESG Risk Review the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "ASHOK LEYLAND LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "ESG Risk Review" in App Search field
    And Wait for 3 seconds
    And Expand "Moody's - ESG Risk Review" panel
    Then Shows the title for Moodys - ESG Risk Review
    And Shows ESG predicted score title in app panel
    And Wait for 3 seconds
    Then Logout from the system

  #Moodys - Key Information
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Moodys - Key Information the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "CROWN LIQUOR" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "Key Information" in App Search field
    And Wait for 3 seconds
    And Expand "Moody's - Key Information" panel
    Then Shows the title for Moodys - Key Information
    And Shows the Supplier name in app panel under Risk Informaiton
    And Wait for 3 seconds
    Then Logout from the system

  #EcoVadis IQ
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see EcoVadis IQ the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kknokia@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "ALPHABET INC." Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "EcoVadis IQ" in App Search field
    And Wait for 3 seconds
    And Expand "EcoVadis IQ" panel
    Then Shows the title for EcoVadis IQ Badge
    And Shows the Country Theme Risks
    And Wait for 3 seconds
    Then Logout from the system

  #EcoVadis Rating
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see EcoVadis Rating the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "MCDONALD'S CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "EcoVadis Rating" in App Search field
    And Wait for 3 seconds
    And Expand "EcoVadis Rating" panel
    Then Shows the title for EcoVadis - Sustainability Badge
    #And Shows View Score Card link
    And Wait for 3 seconds
    Then Logout from the system

  #Dun & Bradstreet Supplier Risk Assessment
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see Dun & Bradstreet Supplier Risk Assessment the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "D&B - Supplier Risk Assessment" in App Search field
    And Wait for 3 seconds
    And Expand "D&B - Supplier Risk Assessment" panel
    Then Shows the title for Dun & Bradstreet Supplier Risk Assessment
    And Shows Fiserv Solutions label
    And Wait for 3 seconds
    Then Logout from the system

  #Consolidated Screening List
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Consolidated Screening List the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "CROWN LIQUOR" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 20 seconds
    And Enter "Consolidated Screening List" in App Search field
    And Wait for 5 seconds
    And Expand "Consolidated Screening List" panel
    And Wait for 5 seconds
    Then Shows the title for Consolidated Screening List
    And Shows Business name match category
    And Wait for 3 seconds
    Then Logout from the system

  #RapidRatings
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see RapidRatings the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "RapidRatings" in App Search field
    And Wait for 3 seconds
    And Expand "RapidRatings" panel
    Then Shows the title for RapidRatings
    And Shows Risk Level Label
    And Wait for 3 seconds
    Then Logout from the system

  #ComplyAdvantage
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see ComplyAdvantage the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "BROOKFIELD CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "ComplyAdvantage" in App Search field
    And Wait for 3 seconds
    And Expand "ComplyAdvantage" panel
    Then Shows the title for ComplyAdvantage
    And Shows request screening button
    And Wait for 3 seconds
    Then Logout from the system

  #GDC
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see GDC the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "CROWN LIQUOR" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "GDC International Digital Identity Verification" in App Search field
    And Wait for 3 seconds
    And Expand "GDC" panel
    Then Shows the title for GDC
    And Shows Request Data Verification button
    And Wait for 3 seconds
    Then Logout from the system

  #KYC SiteScan
  #@RiskInsights @TYSFunctionality @HotfixCheck
  Scenario: I am able to see KYC SiteScan the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "mydemousr@maildrop.cc"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "KYC SiteScan" in App Search field
    And Wait for 3 seconds
    And Expand "KYC SiteScan" panel
    Then Shows the title for KYC SiteScan
    And Wait for 3 seconds
    Then Logout from the system

  #Supplier IO
  @RiskInsights @TYSFunctionality @SanityCheckSuite
  Scenario: I am able to see Supplier IO the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    And Enter "EXHIBITS SOUTH" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 15 seconds
    And Enter "supplier.io" in App Search field
    And Wait for 3 seconds
    And Expand "supplier.io" panel
    Then Shows the title Supplier IO
    And Scroll Down until "1620" dimension on the page
    Then Shows Contact Details title for "supplier.io"
    And Wait for 3 seconds
    Then Logout from the system
