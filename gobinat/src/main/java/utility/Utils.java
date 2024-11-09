package utility;

import org.apache.log4j.Logger;
import pages.SupplierRequestPage;
import java.util.Random;


public class Utils
{
	Logger logger = Logger.getLogger(Utils.class);

	public static String getDirPath(String path)
	{
		String value;
		String CurDir = System.getProperty("user.dir");
		value = CurDir+ path;
		System.out.println("User Dir Path: ---"+value);
		return value;
	}

	public static String ramndomStringGenerator(int stringLength)
	{
		int startLetter = 97;
		int endLetter = 122;
		Random random = new Random();
		String generatedString = random.ints(startLetter,endLetter+1).limit(stringLength)
				.collect(StringBuilder::new,StringBuilder::appendCodePoint,StringBuilder::append).toString();
		System.out.println("\n"+ "Generated String is: ---" +"\n"+generatedString);
		return generatedString;
	}



}
