Feature: Login Page
  #Login
  #@LoginDisable @ForgotPwd

Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @Login @CDCI @QuickSanity @QuickCheck @SanityCheck
  Scenario: Verify buyer login functionality with valid credentials
    When Enter data in Email Address field
    ##Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Show the title on Dashboard page
    And Logout from the system

  @Smoke @Login @Supplier @CDCI @Sanity @QuickSanity
  Scenario: Verify supplier login functionality with valid credentials
    When Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Supplier should land on dashboard page
    And Logout from the system

  #@Regression @Login
  Scenario: Verify Get Help link visibility and status on Login page
    Then Get Help link visibility on Login page "true"
    Then Get Help link enable on Login page "true"

  @Regression @Login @Sanity
  Scenario: Verify Help link visibility and status on Login page
    When Show Help link on Login page "true"
    Then Help link enabled on Login page "true"

  #@Smoke @Login
  Scenario: Verify Get Help link functionality on Login page
    When Click on Get Help link on Login page
    Then Switch to new Tab
    And Show the title on Help page "Support Center"

  @Smoke @Login @CDCI @Sanity @QuickSanity
  Scenario: Verify Help link functionality on Login page
    When Click on Help link on Login page
    Then Switch to new Tab
    And Show the title on Help page "Support Center"

  @Regression @Login
  Scenario: Verify Terms of Use link visibility and status on Login page
    When Show Terms of Use link on Login page "true"
    Then Terms of Use link enable on Login page "true"

  @Smoke @Login @CDCI @QuickSanity
  Scenario: Verify Terms of Use link functionality on Login page
    When Click on Terms of Use link on Login page
    Then Switch to new Tab
    And Show the title on Terms of Use page "TERMS OF USE"

  @Regression @Login
  Scenario: Verify Privacy Policy link visibility on Login page
    When Show Privacy Policy link on Login page "true"
    Then Privacy Policy link enable on Login page "true"

  @Smoke @Login @CDCI @QuickSanity
  Scenario: Verify Privacy Policy link functionality on Login page
    When Click on Privacy Policy link on Login page
    Then Switch to new Tab
    And Show the title on Privacy Policy page "Privacy Policy"

  @Regression @Login
  Scenario: Verify Forgot your password link visibility on Login page
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    And Show Forgot your password link on Login page "true"

  @Regression @Login
  Scenario: Verify Forgot your password link status on Login page
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    And Forgot your password link enable on Login page "true"

  @Smoke @Login @CDCI @QuickSanity
  Scenario: Verify Forgot your password link functionality on Login page
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Show the title on Forgot your password page "Reset your Password"

  @Regression @Login
  Scenario: Verify Continue button visibility on Login page
    When Continue button visibility on Login page "true"
    Then Continue button enable on Login page "true"

  @Regression @Login
  Scenario: Verify Continue button onclick on Login page
    When Click on Continue button on Login page
    Then Show an error message for Email Address "Required"

  @Regression @Login
  Scenario: Verify error message for invalid Email Address on Login page
    When Enter data in Email Address field "abcd"
    Then Click on Tab Key
    And Show an error message for Email Address field "Invalid email address"

  @Regression @Login
  Scenario: Verify error message for Email Address having special characters
    When Enter data in Email Address field "&&@!&%$"
    Then Click on Tab Key
    And Show an error message for Email Address field "Invalid email address"

  @Regression @Login
  Scenario: Verify Sign In button visibility and status on Login page
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    Then Sign In button visibility on Login page "true"
    And Sign In button enable on Login page "true"

  @Regression @Login
  Scenario: Verify Email Address and Password label on Login page
    When Show Email Address text "Email Address"
    Then Enter data in Email Address field "ab@abc.com"
    And Click on Continue button on Login page
    Then Show Password text "Password"

  @Regression @Login
  Scenario: Verify error message on Login page without enter data
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    Then Click on Tab Key
    And Show an error message for Password "Required"

  @Regression @Login
  Scenario: Verify error message for invalid Email Address and Passwords
    When Enter data in Email Address field "ab@abc.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field "asadsd"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login

  @Regression @ForgotPwd @Login
  Scenario: Verify Send button visibility and status on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    Then Show Send button on Reset your Password page "true"
    And Send button clickable on Reset your Password  page "true"

  @Regression @ForgotPwd @Login
  Scenario: Verify error messages on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    And Click on Send button on Reset your Password page
    Then Verify Email Address is entered in Email Address field
    And Remove Email from Email address field
    Then Show error message for Email Address field "Required"
    And Show error message for Captcha "Required"

  @Regression @ForgotPwd @Login
  Scenario: Verify Back to Sign In button visibility and status on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    Then Show Back to sign in button on Reset your Password page "true"
    And Back to sign in button clickable on Reset your Password page "true"

  @Smoke @ForgotPwd @Login @CDCI @Sanity @QuickSanity
  Scenario: Verify Back to Sign In button functionality on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    And Wait for 5 seconds
    Then Click on Back to sign in button on Reset your Password page
    Then Wait for 5 seconds
    And Show Welcome title "Welcome."

  @Regression @ForgotPwd @Login
  Scenario: Verify error messages for invalid email address on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    And Click on Forgot your password link on Login page
    Then Enter invalid email address "asasa"
    And Click on Send button on Reset your Password page
    Then Show an error message for Email Address field "Invalid email address"

  @Regression @ForgotPwd @Login
  Scenario: Verify error messages for invalid email address on Reset your Password page
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Enter invalid email address "asas@asa.com"
    Then Click on Send button on Reset your Password page
    And Show an message for Email Address field "Resetting your password is easy"

  #@Regression @Login
  Scenario: Verify flex text when failed to login and Last Failed Login on Dashboard for buyer
    Then Enter data in Email Address field "bbchandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Itpc@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "QAAuto@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on flex
    Then Logout from the system

  #@Regression @Login @Supplier @
  Scenario: Verify flex text when failed to login and Last Failed Login on Dashboard for supplier
    Then Enter data in Email Address field "schandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Itpeople@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "AutoQA@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on supplier flex
    Then Logout from the system

  #@Regression @Login
  Scenario: Verify flex text when failed to login and Last Failed Login on Dashboard with notification for buyer
    Then Enter data in Email Address field "bbchandra@mailinator.com"
    #Then Click on Continue button on Login page
    #Then Enter data in Password field "Itpc@123"
    #Then Click on Sign In button on Login
    #Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "QAAuto@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on flex
    Then Logout from the system
    Then Check the "bbchandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  @Regression @Login
  Scenario: Verify flex text when failed to login and Last Failed Login on Dashboard with notification  for supplier
    When Enter data in Email Address field "schandra@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field "Asadsd@123"
    Then Click on Sign In button on Login
    #And Wait for 2 seconds
    Then Show an error toast message "Invalid Credentials" on Login
    And Enter data in Password field "Automation@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on supplier flex
    And Logout from the system
    #Then Check the "schandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  #@Regression @Login
  Scenario: Verify flex text when failed to login 2nd time and Last Failed Login on Dashboard with notification for buyer
    Then Enter data in Email Address field "bbchandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "QAAuto@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on flex
    Then Logout from the system
    Then Check the "bbchandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  #@Regression @Login @Supplier
  Scenario: Verify flex text when failed to login 2nd time and Last Failed Login on Dashboard with notification for supplier
    Then Enter data in Email Address field "schandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "AutoQA@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on supplier flex
    Then Logout from the system
    Then Check the "schandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  #@Regression @Login
  Scenario: Verify flex text when failed to login 3rd time and Last Failed Login on Dashboard with notification for buyer
    Then Enter data in Email Address field "bbchandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "QAAuto@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on flex
    Then Logout from the system
    Then Check the "bbchandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  #@Regression @Login @Supplier
  Scenario: Verify flex text when failed to login 3rd time and Last Failed Login on Dashboard with notification for supplier
    Then Enter data in Email Address field "schandra@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login
    Then Enter data in Password field "AutoQA@123"
    Then Click on Sign In button on Login
    Then Show the text "Last Failed Login" on supplier flex
    Then Logout from the system
    Then Check the "schandra@mailinator.com" subject "SECURITY ALERT: Trust Your Supplier Failed Login Attempt"

  @Regression @LoginDisable @Login
  Scenario: Verify Login Failure on First Incorrect Login
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field "Asadsd@123"
    And Click on Sign In button on Login
    #Then Wait for 2 seconds
    And Show an error toast message "Invalid Credentials" on Login

  #@Regression @LoginDisable @Login
  Scenario: Verify Login Failure on Second Incorrect Login
    Then Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsqd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login

  #@Regression @LoginDisable @Login
  Scenario: Verify Login Failure on Third Incorrect Login
    Then Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asaqdsd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "Invalid Credentials" on Login

  #@Regression @LoginDisable @Login
  Scenario: Verify Login Disabled on Fourth Incorrect Login
    Then Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    Then Enter data in Password field "Asadsqd@123"
    Then Click on Sign In button on Login
    Then Show an error toast message "account has been locked" on Login

  @Regression @LoginDisable @Login
  Scenario: Verify Forgot your password link visibility and status on Login page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    Then Verify Password field is Enabled "true"
    And Show Forgot your password link on Login page "true"
    Then Forgot your password link enable on Login page "true"

  @Regression @LoginDisable @Login
  Scenario: Verify Reset you Password Label visibility on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Show Reset your Password Label on Reset your Password page "true"

  @Regression @LoginDisable @Login
  Scenario: Verify Email Address label visibility on Reset your password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Forgot your password link on Login page
    And Show Email Address text "Email Address"

  @Regression @LoginDisable @Login
  Scenario: Verify Email Address text box visibility on Rest your password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Forgot your password link on Login page
    Then Verifify Email Address text box visibility on Rest your password page

  @Regression @LoginDisable @Login
  Scenario: Verify Send button visibility on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Show Send button on Reset your Password page "true"

  @Regression @LoginDisable @Login
  Scenario: Verify Send button status on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Send button clickable on Reset your Password  page "true"

  #Same test case exists in line number 151 in this feature file
  #@Regression @LoginDisable @Login
  Scenario: Verify error messages on Reset your Password page
    Then Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    Then Click on Forgot your password link on Login page
    Then Click on Send button on Reset your Password page
    Then Show error message for Email Address field "Required"
    Then Show error message for Captcha "Required"

  @Regression @LoginDisable @Login
  Scenario: Verify Back to Sign In button visibility on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Show Back to sign in button on Reset your Password page "true"

  @Regression @LoginDisable @Login
  Scenario: Verify Back to Sign In button status on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Back to sign in button clickable on Reset your Password page "true"

  @Smoke @LoginDisable @Login @CDCI @Sanity @QuickSanity
  Scenario: Verify Back to Sign In button functionality on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    Then Click on Back to sign in button on Reset your Password page
    And Show Welcome title "Welcome."

  @Regression @LoginDisable @Login
  Scenario: Verify error messages for invalid email address on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Enter invalid email address "ITPeople@123"
    Then Click on Send button on Reset your Password page
    And Show an error message for Email Address field "Invalid email address"

  @Regression @LoginDisable @Login
  Scenario: Verify error messages for invalid email address on Reset your Password page
    When Enter data in Email Address field "logindisablebuyer@mailinator.com"
    #Then Click on Continue button on Login page
    And Wait for 8 seconds
    Then Click on Tab Key
    Then Click on Forgot your password link on Login page
    And Enter invalid email address "asas@asa.com"
    Then Click on Send button on Reset your Password page
    And Show an message for Email Address field "Resetting your password is easy"