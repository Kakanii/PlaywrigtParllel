const { test, expect } = require('@playwright/test');
const { loginPage } = require('../pageObjects/loginPage');
const testdata = require('../data/testdata');

test('Verify Labels on Login Page', async ({ page }) => {
    const loginPage = new loginPage(page);
    await loginPage.gotoLoginPage();
    console.log(await page.title());
    await expect(page).toHaveTitle("Trust Your Supplier");

    await loginPage.verifyWelcomeTitle();
    await loginPage.verifyEmailAddressLabel();
    await loginPage.verifyPasswordLabel();
    await loginPage.verifyForgotPassword();
    await loginPage.verifyNeedHelpLink();

});

test('@Smoke Verify Login with Valid Credentials', async ({ page }) => {
    const loginPage = new loginPage(page);
    await loginPage.gotoLoginPage();

    loginPage.validLogin();

});