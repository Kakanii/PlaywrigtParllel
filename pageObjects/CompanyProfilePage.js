import { faker } from '@faker-js/faker';

class CompanyProfilePage {
    constructor(page, expect) {
        this.page = page;
        this.expect = expect;
    }

    async login(email, password) {
        await this.page.goto('https://qa2.recnyls.com/');
        await this.page.getByPlaceholder('Enter Email Address').fill(email);
        await this.page.getByPlaceholder('Enter Your Password').fill(password);
        await this.page.getByRole('button', { name: 'Sign In' }).click();
        await this.page.waitForLoadState('networkidle');
    }

    async fillSection(sectionName, fillFunction) {
        if (await this.page.getByText(sectionName).first().isVisible()) {
            console.log(`Filling ${sectionName} section`);
            await this.page.getByText(sectionName).first().waitFor();
            await fillFunction();
            console.log(`${sectionName} section filled`);
        } else {
            console.log(`${sectionName} section is not visible`);
        }
    }

    async fillCompanyInformation() {
        await this.fillSection('Company Information', async () => {
            const companyDescription = faker.company.catchPhrase();
            if (await this.page.getByLabel('Select Date').isVisible()) {
                await this.page.getByLabel('Select Date').click();
                await this.page.getByLabel('Choose Tuesday, October 1st,').click();
                await this.page.getByRole('button', { name: 'Select Month' }).click();
                await this.page.getByRole('menuitemradio', { name: 'January' }).click();
            }
            await this.page.getByPlaceholder('Write few words about the').fill(faker.company.catchPhrase());
            console.log(`Company Description: ${companyDescription}`);

        });
    }

    async fillContactDetails() {
        await this.fillSection('Contact Details', async () => {

            const phoneNumber = faker.phone.number('##########');
            const faxNumber = faker.phone.number('##########');
            const companyEmail = faker.internet.email();
            const companyUrl = faker.internet.url();

            await this.page.getByPlaceholder('Enter Phone Number').fill(phoneNumber);
            console.log(`Phone Number: ${phoneNumber}`);

            await this.page.getByPlaceholder('Enter Fax Number').fill(faxNumber);
            console.log(`Fax Number: ${faxNumber}`);

            await this.page.getByPlaceholder('Enter Company Email Address').fill(companyEmail);
            console.log(`Company Email: ${companyEmail}`);

            await this.page.getByPlaceholder('https://').fill(companyUrl);
            console.log(`Company URL: ${companyUrl}`);
        });
    }

    async fillTaxDetails() {
        await this.fillSection('Tax Details', async () => {
            await this.page.getByRole('button', { name: 'Select Business Type' }).click();
            await this.page.getByRole('menuitemradio', { name: 'Corporation' }).click();
            console.log(`Business Type: Corporation`);

        });
    }

    async fillTaxRegistrationDocument() {
        if (await this.page.locator('div').filter({ hasText: 'Tax Registration Document' }).getByRole('img').isVisible()) {
            await this.page.locator('div').filter({ hasText: 'Tax Registration Document' }).getByRole('img').click();
            const ein = faker.random.alphaNumeric(10);
            await this.page.getByLabel('Employer Identification').fill(ein);
            await this.page.getByRole('button', { name: 'Upload' }).click();
            console.log(`Employer Identification Number (EIN): ${ein}`);
        } else {
            console.log("Tax Registration Document is not visible");
        }
    }

    async fillEmployeeDetails() {
        await this.fillSection('Number of Full Time Employees', async () => {
            const fullTimeEmployees = faker.random.numeric(2);
            const temporaryEmployees = faker.random.numeric(2);
            await this.page.getByLabel('Number of Full Time Employees').fill(fullTimeEmployees);
            console.log(`Number of Full Time Employees: ${fullTimeEmployees}`);

            await this.page.getByLabel('Number of Temporary and').fill(temporaryEmployees);
            console.log(`Number of Temporary Employees: ${temporaryEmployees}`);

        });
    }

    async fillUNSPSCCodes() {
        if (await this.page.locator('div').filter({ hasText: 'Select All' }).locator('span').isVisible()) {
            await this.page.locator('div').filter({ hasText: 'Select All' }).locator('span').click();
            console.log("UNSPSC Codes section is Filled");
        } else {
            console.log("UNSPSC Codes section is already filled");
        }
    }

    async fillLinkYourProfileOnPartner() {
        await this.fillSection('Link your profile on partner', async () => {
            await this.page.getByText('Link your profile on partner').click();
        });
    }


    async fillManagement() {
        if (await this.page.getByText('Your Executives and Management team', { exact: true }).isVisible()) {
            const positions = [
                { title: 'Chief Executive Officer', name: 'sai sri -', status: 'ceo details saved successfully' },
                // { title: 'Chief Financial Officer', firstName: faker.person.firstName(), lastName: faker.person.lastName(), jobTitle: 'CEO', phone: faker.phone.number('###'), email: faker.internet.email() },
                { title: 'Chief Financial Officer', firstName: faker.person.firstName(), lastName: faker.person.lastName(), jobTitle: 'CFO', phone: faker.phone.number('##########'), email: faker.internet.email(), status: 'cfo details saved successfully' },
                { title: 'Director of Sales', firstName: faker.person.firstName(), lastName: faker.person.lastName(), jobTitle: 'DFO', phone: faker.phone.number('##########'), email: faker.internet.email(), status: 'dos details saved successfully' }
            ];

            for (const pos of positions) {
                if (await this.page.getByText(`Add ${pos.title}`).isVisible()) {
                    await this.page.getByRole('button', { name: 'Assign Contact' }).first().click();
                    await this.expect(this.page.getByText('Assign Contact to Management')).toBeVisible();

                    if (pos.name) {
                        await this.page.locator('label').filter({ hasText: 'Choose an Existing Contact' }).locator('span').first().click();
                        await this.page.getByRole('button', { name: 'Choose an Existing Contact' }).click();
                        await this.page.getByRole('menuitemradio', { name: pos.name }).click();
                        console.log(`Added Contact: ${pos.title}`);
                        await this.page.getByRole('button', { name: 'Add Contact' }).click();
                        await this.expect(this.page.getByLabel('Notifications-top-right').getByRole('paragraph')).toContainText(pos.status);
                        await this.page.waitForTimeout(3000);

                    } else {
                        await this.page.waitForTimeout(3000);
                        await this.page.getByPlaceholder('Enter First Name').fill(pos.firstName);
                        console.log(`First Name: ${pos.firstName}`);

                        await this.page.getByPlaceholder('Enter Last Name').fill(pos.lastName);
                        console.log(`Last Name: ${pos.lastName}`);

                        await this.page.getByPlaceholder('Enter Job Title').fill(pos.jobTitle);
                        console.log(`Job Title: ${pos.jobTitle}`);

                        await this.page.waitForTimeout(3000);
                        await this.page.getByPlaceholder('Enter Phone Number').first().fill(pos.phone);
                        console.log(`Phone: ${pos.phone}`);

                        await this.page.getByLabel('Email Address', { exact: true }).fill(pos.email);
                        console.log(`Email: ${pos.email}`);

                        await this.page.getByRole('button', { name: 'Select From Existing Country' }).click();
                        await this.page.getByRole('menuitemradio', { name: 'Headquarters TURNPIKE ROAD' }).click();
                        await this.page.getByRole('button', { name: 'Add Contact' }).click();

                        await this.expect(this.page.getByLabel('Notifications-top-right').getByRole('paragraph')).toContainText(pos.status);
                        await this.page.waitForTimeout(3000);
                    }
                }
            }
            await this.saveAndContinue();
        }
    }

    async saveAndContinue() {
        if (await this.page.getByRole('button', { name: 'Save and Continue' }).isVisible()) {
            await this.page.getByRole('button', { name: 'Save and Continue' }).click();
            console.log("Saved and continued to the next section.");
        } else {
            console.log("Save and Continue button is not visible");
        }
        await this.page.waitForTimeout(3000);
    }

    async fillCompanyProfile() {
        await this.fillCompanyInformation();
        await this.fillContactDetails();
        await this.fillTaxDetails();
        await this.saveAndContinue();
        await this.expect(this.page.getByLabel('Notifications-top-right').getByRole('paragraph')).toContainText('Company profile has been saved successfully');
        await this.fillEmployeeDetails();
        await this.saveAndContinue();
    }

    async fillProductsServices() {
        await this.fillUNSPSCCodes();
        await this.saveAndContinue();
    }

    async fillExternalIdentifiers() {
        await this.fillLinkYourProfileOnPartner();
        await this.saveAndContinue();

    }

// Ouestionaries

async navigateToQuestionnaires() {
    await this.page.getByLabel('Progress').getByText('Questionnaires').click();
    const states = {
        NotStarted: await this.page.locator("//span[text()='Not Started']").isVisible(),
        InProgress: await this.page.locator("//span[text()='In Progress']").isVisible(),
        ReadyToPublish: await this.page.locator("//span[text()='Ready to Publish']").isVisible(),
        Published: await this.page.locator("//span[text()='Published']").isVisible()
    };

    if (states.NotStarted || states.InProgress) {
        console.log(states.NotStarted ? 'Questionnaires Not Started is visible.' : 'Questionnaires in progress is visible.');
        await this.processQuestionnaire();
    } else if (states.ReadyToPublish || states.Published) {
        console.log(states.ReadyToPublish ? 'Ready To Publish Questionnaire is visible.' : 'Published Questionnaire is visible.');
        await this.updateAndPublishQuestionnaire();
    } else {
        console.log('No relevant questionnaire status is visible.');
    }
}

    async processQuestionnaire() {
        await this.continueQuestionnaire();
        await this.fillQuestionnaire();
        await this.clickButton("//button[text()='Save as Draft']/following-sibling::button");
    
        const publishVisible = await this.page.locator("//p[text()='Publish Questionnaire']").isVisible();
        if (publishVisible) {
            console.log('Publish Questionnaire is visible.');
            await this.clickButton("//button[text()='Save & Continue']");
        }
    }

    async updateAndPublishQuestionnaire() {
        await this.UpdateQuestionnaire();
        await this.clickButton("//button[text()='Save as Draft']/following-sibling::button");
    
        const publishVisible = await this.page.locator("//p[text()='Publish Questionnaire']").isVisible();
        if (publishVisible) {
            console.log('Publish Questionnaire is visible.');
            await this.clickButton("//button[@class='chakra-button css-19yhfgr']");
        }
    }

    async clickButton(selector) {
        if (await this.page.locator(selector).isVisible()) {
            await this.page.locator(selector).click();
        } else {
            console.log(`Button with selector ${selector} is not visible.`);
        }
    }

    async BeginQuestionnaire() {
        await this.clickMenuItem("(//button[@class='chakra-menu__menu-button css-y1y2s'])[1]", 'Begin Questionnaire');
    }
    
    async continueQuestionnaire() {
        await this.clickMenuItem("(//button[@class='chakra-menu__menu-button css-y1y2s'])[1]", 'Continue Questionnaire');
    }
    
    async UpdateQuestionnaire() {
        await this.clickMenuItem("(//button[@class='chakra-menu__menu-button css-y1y2s'])[1]", 'Update Questionnaire');
    }
    
    async clickMenuItem(menuSelector, itemName) {
        const menuButton = this.page.locator(menuSelector);
        if (await menuButton.isVisible()) {
            await menuButton.click();
            const menuItem = this.page.getByRole('menuitem', { name: itemName });
            await menuItem.waitFor({ state: 'visible', timeout: 10000 });
            await menuItem.click();
            console.log(`Clicked '${itemName}' successfully.`);
        } else {
            console.log(`Menu button for '${itemName}' is not visible.`);
        }
    }

    async fillQuestionnaire() {
        const radioControls = [
            "(//input[@type='radio']/following-sibling::span)[1]",
            "(//input[@type='radio']/following-sibling::span)[5]",
            "(//input[@type='radio']/following-sibling::span)[9]",
            "(//input[@type='radio']/following-sibling::span)[13]",
            "(//input[@type='radio']/following-sibling::span)[17]",
            "(//input[@type='radio']/following-sibling::span)[21]",
            "(//input[@type='radio']/following-sibling::span)[25]",
        ];
    
        for (const control of radioControls) {
            await this.page.locator(control).click();
        }
    
        if (await this.page.getByRole('button', { name: 'Save as Draft' }).isVisible()) {
            console.log('Save as Draft button is visible.');
            await this.page.getByRole('button', { name: 'Save as Draft' }).click();
        } else {
            console.log('Save as Draft button is not visible. Cannot save.');
        }
    }

}

export default CompanyProfilePage;
