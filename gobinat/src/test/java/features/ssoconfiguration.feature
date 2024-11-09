Feature: SSO Configuration
#SSOConfiguration

Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    When Click on Collapse Icon for Suppliers
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on SSO Configuration Tab

  @Smoke @SSOConfiguration @QuickSanity
  Scenario: Verify if the Title and Is SSO Enabled check Box available on SSO page
    Then SSO Configuration Title text Visibility "SSO Configuration"
    Then Single Sign On Checkbox Title Visibility "Is Single Sign On Enabled"
    Then Is Single Sign On Enabled Checkbox Available
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Save Changes button available on SSO Page
    Then Save Changes button Visiblility "Save Changes"
    Then Save Changes button is not clickable "true"
    Then Logout from the system

  ##### OPEN ID Connect #########
  @Smoke @SSOConfiguration @CDCI @QuickSanity
  Scenario: Verify Open ID Connect Strategy Available in Strategy Dropdown on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Show "Is Single Sign On Enabled" tooltip "Boolean indicator of whether the sso is enabled"
    Then Show "Strategy" tooltip "Open web standards like OpenIDConnect and SAML"
    Then Strategy dropdown should be clickable "true"
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify BASE URL field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Base URL field text Visibility "Base URL"
    Then Base URL Free From Text Box Availability
    Then Show "Base URL" tooltip "Base URL for communicating with the SSO provider"
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Client ID field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Client ID Text Visibility "Client ID"
    Then Show "Client ID" tooltip "Client identifier of the SSO Client who requested the access token"
    Then Free From Text Box for client id Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Client Secret field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Client Secret Text Visibility "Client Secret"
    Then Show "Client Secret" tooltip "Secret used by the client to exchange an authorization code for a token. This must be kept confidential!"
    Then Free From Text Box for Client Secret Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Return URL field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Return URL Text Visibility "Return URL"
    Then Show "Return URL" tooltip "Callback location where the authorization code or tokens should be sent. It must match the value preregistered in SSO Portal during client registration"
    Then Return URL Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Scope field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Scope Text Visibility "Scope Text"
    Then Show "Scope" tooltip "OpenID Connect requests must contain the openid scope value"
    Then Scope Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Response Type field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Response Type Text Visibility "Response Type"
    Then Show "Response Type" tooltip "Determines the authorization processing flow to be used. When using the Authorization Code Flow, this value is code"
    Then Response Type Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Authorize URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Authorize URI Text Visibility "Authorize URI"
    Then Show "Authorize URI" tooltip "Endpoint to interact with the resource owner and obtain an authorization grant "
    Then Authorize URI Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Token URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Token URI Text Visibility "Token URI"
    Then Show "Token URI" tooltip "Endpoint to obtain an access and/or ID token by presenting an authorization grant or refresh token"
    Then Token URI Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Introspect URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Introspect URI Text Visibility "Introspect URI"
    Then Show "Introspect URI" tooltip "Endpoint to get information about a token"
    Then Introspect URI Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Userinfo URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Userinfo URI Text Visibility "Userinfo URI"
    Then Show "Userinfo URI" tooltip "Endpoint to get claims about the authenticated end user"
    Then Userinfo URI Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Revoke URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Revoke URI Text Visibility "Revoke URI"
    Then Show "Revoke URI" tooltip "Endpoint to Revoke an access or refresh token"
    Then Revoke URI Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Logout URI field Available for Open ID Connect SSO Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Title of Logout URI Text Visibility "Logout URI"
    Then Show "Logout URI" tooltip "Endpoint to end the session associated with the given ID token"
    Then Logout URI Free From Text Box Availability
    Then Logout from the system

  ##### SAML Protocol #########
  @Smoke @Regression @SSOConfiguration  @CDCI @QuickSanity
  Scenario: Verify SAML Strategy Available in Strategy Dropdown on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify SAML Login URL Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of SAML Login URL Text Visibility "SAML Login URL"
    Then Show "SAML Login URL" tooltip "Base URL for communicating with the SSO provider"
    Then SAML Login URL Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify SAML EntityID Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of SAML EntityID Text Visibility "SAML EntityID"
    Then Show "SAML EntityID" tooltip "The application-defined unique identifier that is the intended audience of the SAML assertion. This is most often the SP Entity ID of your application."
    Then SAML EntityID Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify ACS URL Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of ACS URL Text Visibility "ACS URL"
    Then Show "ACS URL" tooltip "Assertion Consumer Service is the service provider's endpoint (URL) that is responsible for receiving and parsing a SAML assertion"
    Then ACS URL Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Relay State Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Relay State Text Visibility "Relay State"
    Then Show "Relay State" tooltip "Identifies a specific application resource in an IDP initiated Single Sign-On scenario."
    Then Relay State Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Name ID Format Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Name ID Format Text Visibility "Name ID Format"
    Then Show "Name ID Format" tooltip "Format for Name ID"
    Then Name ID Format Free From Text Box Availability
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Attach X509 Certificate Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Attach X509 Certificate Text Visibility "Attach X.509 Certificate"
    Then Show "Attach X.509 Certificate" tooltip "X.509 Certificate"
    Then Attach X509 Certificate Upload File Picker Availability
    Then Attach X509 Certificate Note Availability for Accepted File Types "Accepted file types: PEM, CER, CERT, P7B, KEY, P7C, DER, PFX, P12; files less than 5MB"
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Private Key Field available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Private Key Text Visibility "Private Key"
    Then Show "Private Key" tooltip "Private Key"
    Then Private Key Upload File Picker Availability
    Then Private Key Note Availability for Accepted File Types "Accepted file types: PEM, CER, CERT, P7B, KEY, P7C, DER, PFX, P12 files less than 5MB"
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify Allow Unencrypted Assertion available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Allow Unencrypted Assertion  Visibility "Allow Unencrypted Assertion"
    Then Show "Allow Unencrypted Assertion" tooltip "If true, forces re-authentication of users even if the user has a SSO session with the IdP"
    Then Allow Unencrypted Assertion CheckBox Availability
    Then Verify if Allow Unencrypted Assertion is Clickable
    Then Logout from the system

  @Regression @SSOConfiguration
  Scenario: Verify SignIn Get Request available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of SignIn Get Request Visibility "SignIn Get Request"
    Then Show "SignIn Get Request" tooltip "If true, signs the request"
    Then SignIn Get Request CheckBox Availability
    Then Verify if SignIn Get Request is Clickable
    Then Logout from the system

  @Smoke @SSOConfiguration @QuickSanity
  Scenario: Verify Force Authentication available for SAML Strategy on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Strategy dropdown should be clickable "true"
    Then Select a protocol from the strategy dropdown "SAML"
    Then Title of Force Authentication Visibility "Force Authentication"
    Then Show "Force Authentication" tooltip "If true, forces re-authentication of users even if the user has a SSO session with the IdP"
    Then Force Authentication CheckBox Availability
    Then Verify if Force Authentication is Clickable
    Then Logout from the system