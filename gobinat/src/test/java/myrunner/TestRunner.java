package myrunner;

import java.util.Objects;

import org.apache.log4j.Logger;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import io.cucumber.testng.CucumberFeatureWrapper;
import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.PickleEventWrapper;
import io.cucumber.testng.TestNGCucumberRunner;
import utility.Base;

@CucumberOptions(
		features = "src/test/java/features",
		glue = {"stepdefinition"},
		tags = {"@SanityCheck"},
		plugin = {"pretty", "json:target/cucumber-report/cucumber.json" }, monochrome = true)


public class TestRunner
{
	public static TestNGCucumberRunner testNGCucumberRunner;
	
	Logger logger=Logger.getLogger(TestRunner.class);
	
	@BeforeClass(alwaysRun = true)
	public void setUpClass() throws Exception
	{		
		testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
		
	}
	
	@Test(groups = "cucumber scenarios", description = "Run Cucumber Feature", dataProvider = "scenarios")
	public void scenario(PickleEventWrapper pickleEvent, CucumberFeatureWrapper cucumberFeature) throws Throwable
	 { 		
		testNGCucumberRunner.runScenario(pickleEvent.getPickleEvent()); 
		
	 }
	
	@DataProvider
	public Object[][] scenarios()
	{
		return testNGCucumberRunner.provideScenarios();
	}
	
	@AfterClass(alwaysRun = true)
	public void teaDownClass() throws Exception
	{		
		testNGCucumberRunner.finish();		
	}
	
	@Parameters({"Browser"})
	@BeforeTest
	public void initializeTest(String browser) 
	{		
		Base.ChooseBrowser(browser);
	}		
	
	
	@AfterTest
	public void CloseBrowser()
	{		
		if(Objects.nonNull(Base.driver))				
		{
			Base.driver.quit();
			Base.driver=null;
		}
		
	}
}
