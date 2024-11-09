package utility;

import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WaitClass extends DriverEngine
{
	public static void webDriverWait(String Object) 
	{		
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(Object)));	
		 
	}

	public static void clickableWait(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath(Object)));
	}
	
	public static void hotjarWait(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,3);
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath(Object)));
	}
	public static void stalenessWait(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions
				.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(Object)))));

	}
	public static void staleElementClickWait(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions
				.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(Object))));

	}
	public static void elementPresentWait(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(Object)));

	}
	public static void allElementLocated(String Object)
	{
		WebDriverWait wait = new WebDriverWait(driver,300);
		wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(Object)));

	}
}
