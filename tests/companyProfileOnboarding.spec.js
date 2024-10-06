// companyProfileOnboarding.spec.js
import { test, expect } from '@playwright/test';
import CompanyProfilePage from '../pageObjects/CompanyProfilePage';

test('@Regressions @Sanity Company profile onboarding', async ({ page }) => {
    const companyProfilePage = new CompanyProfilePage(page, expect);

    // Login
    await companyProfilePage.login('ramavirtusaautobuyer@maildrop.cc', 'Password1');

    // Fill the form sections
    await companyProfilePage.fillCompanyProfile();
    await companyProfilePage.fillProductsServices();
    await companyProfilePage.fillExternalIdentifiers();
    await companyProfilePage.fillManagement();
    await companyProfilePage.navigateToQuestionnaires();


    

});