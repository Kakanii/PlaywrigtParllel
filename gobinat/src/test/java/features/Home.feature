Feature: Home Page
 #Home page functionality

  Background: Start the application
  
    Given Start the application

  @Regression @Home @Sanity
  Scenario: Verify Request Demo button visibility and status
    When Request Demo button visibility on Home page "true"
    And Request Demo button enable on Home page "true"

  @Regression @Home @Sanity
  Scenario: Verify Sign In button visibility and status
    Then Sign In button visibility on Home page "true"
    And Sign In button enable on Home page "true"

  @Smoke @Home @CDCI @Sanity @QuickSanity
  Scenario: Verify Request Demo button functionality
    When Click on Request Demo button
    Then Show Request a Demo title "Request a Demo"

  @Smoke @Home @CDCI @Sanity @QuickSanity
  Scenario: Verify Sign In button functionality
    When Click on Sign In button
    Then Show Welcome title "Welcome."
