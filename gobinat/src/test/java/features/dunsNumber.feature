Feature: DUNS Visibility

  #DUNSVisibility
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @DUNSVisibility
  Scenario Outline: Verify DUNS Number visibility on Basic Information under Tax Information
    When Enter "<email>" in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 10 seconds
    And Click "Basic Information" tab
    And Scroll Down until "850" dimension on the page
    Then DUNS Number Visible "false"
    And Wait for 5 seconds
    Then Logout from the system
    Then Wait for 5 seconds

    Examples: 
      | email                                           |
      | uyvljlufwpvtltd@maildrop.cc                     |
      | jer0clvinpvtltd@maildrop.cc                     |
      | unft1jdpxpvtltd@maildrop.cc                     |
      | gj6yohmsbpvtltd@maildrop.cc                     |
      | g9k36ktdopvtltd@maildrop.cc                     |
      | germanyauto@maildrop.cc                         |
      | franceauto@maildrop.cc                          |
      | switzerlandauto@maildrop.cc                     |
      | indiaauto@maildrop.cc                           |
      | singaporeauto@maildrop.cc                       |
      | luxembourgauto@maildrop.cc                      |
      | czechrepublicauto@maildrop.cc                   |
      | costaricaauto@maildrop.cc                       |
      | spainauto@maildrop.cc                           |
      | chileauto@maildrop.cc                           |
      | isleofmanauto@maildrop.cc                       |
      | argentinaauto@maildrop.cc                       |
      | boliviaauto@maildrop.cc                         |
      | georgiaauto@maildrop.cc                         |
      | greeceauto@maildrop.cc                          |
      | bulgariaauto@maildrop.cc                        |
      | ivorycoastauto@maildrop.cc                      |
      | philippinesauto@maildrop.cc                     |
      | ecuadorauto@maildrop.cc                         |
      | myanmarauto@maildrop.cc                         |
      | dominicanrepublicauto@maildrop.cc               |
      | mexicoauto@maildrop.cc                          |
      | Croatiaauto@maildrop.cc                         |
      | agesa7zc4pvtltd@maildrop.cc                     |
      | 6xywdafnxpvtltd@maildrop.cc                     |
      | vjafxc3pmpvtltd@maildrop.cc                     |
      | ah8ujycmlpvtltd@maildrop.cc                     |
      | newzealand12supplierautomation@maildrop.cc      |
      | italyinvitesupplierautomation@maildrop.cc       |
      | yrxsnpmkdpvtltd@maildrop.cc                     |
      | srgmqkg1mpvtltd@maildrop.cc                     |
      | vhcp6iimnpvtltd@maildrop.cc                     |
      | 3aqcnwfvupvtltd@maildrop.cc                     |
      | lcw57jegbpvtltd@maildrop.cc                     |
      | eaup6mdpdpvtltd@maildrop.cc                     |
      | 9v0fiwhytpvtltd@maildrop.cc                     |
      | tkx0mw9ycpvtltd@maildrop.cc                     |
      | 4novul0822@mailinator.com                       |
      | px7jqp450pvtltd@maildrop.cc                     |
      | xmwmxo1abpvtltd@maildrop.cc                     |
      | zbqwyo6gapvtltd@maildrop.cc                     |
      | sdfgdterghdvfdpvtltd@maildrop.cc                |
      | ghfterfdcspvtltd@maildrop.cc                    |
      | fhznruvaypvtltd@maildrop.cc                     |
      | 9oc8zpyqmpvtltd@maildrop.cc                     |
      | a25ppazyvpvtltd@maildrop.cc                     |
      | kstechnopvtltd@maildrop.cc                      |
      | russia12supplierautomation@maildrop.cc          |
      | norway1supplierautomation@maildrop.cc           |
      | mauritiussuppliersupplierautomation@maildrop.cc |
      | cg07mjsmlpvtltd@maildrop.cc                     |
      | ahhp5ghmspvtltd@maildrop.cc                     |
      | cameroonsupplierautomation@maildrop.cc          |
      | maltainvitesuppliertestautomation@maildrop.cc   |
      | romaniaauto@maildrop.cc                         |
