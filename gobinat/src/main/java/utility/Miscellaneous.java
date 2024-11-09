package utility;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

public class Miscellaneous extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<Object> currentTime = new ArrayList<Object>();

	ArrayList<Object> tabs = new ArrayList<Object>();

	ArrayList<String> verificationCode = new ArrayList<String>();
	
	Random generator = new Random();

	public String captureTimeStamp() {
		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		return Time;

	}

	public void addTimeStamp() {

		String supplierInfo = captureTimeStamp();

		timeStamp.add(0, supplierInfo);

		return;
	}

	public String getTimeStamp() {
		String time = timeStamp.get(0).toString();

		return time;
	}

	public String captureTime() {
		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		return Time;

	}

	public void addCurrentTime() {

		String supplierInfo = captureTimeStamp();

		currentTime.add(0, supplierInfo);

		return;
	}

	public String getCurrentTime() {
		String time = currentTime.get(0).toString();

		return time;
	}

	public void addHandle(int arrayIndex) {
		String WindowHandle = driver.getWindowHandle();

		tabs.add(arrayIndex, WindowHandle);

		// return WindowHandle ;
	}

	public String getHandle(int arrayIndex) {
		String handle = tabs.get(arrayIndex).toString();
		return handle;

	}

	public void addVerificationCode() {
		String original = ec.getObjects("registration_verificationCode");

		driver.switchTo().frame(0);
		String VC = driver.findElement(By.xpath(original)).getText();

		String string = "VERIFICATION NUMBER: ";
		String Code = VC.substring(string.length());

		driver.switchTo().parentFrame();
		verificationCode.add(0, Code);

	}

	public String getVerificationCode() {
		String Code = verificationCode.get(0);
		return Code;
	}

	public void clearText(String XPATH) {
		WebElement toClear = driver.findElement(By.xpath(XPATH));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);
	}

	public int getRandomInRange(int start, int end){
		   return start + generator.nextInt(end - start + 1);
		}

}
