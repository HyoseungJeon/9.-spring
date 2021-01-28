package io.namoosori.travelclub.util.util;

import java.text.SimpleDateFormat;

public class DateUtil {
	//(
	public static String toString(long dateTime) {
		//
		SimpleDateFormat dateFormat = getDefaultDateFormat();
		return dateFormat.format(dateTime);
	}

	private static SimpleDateFormat getDefaultDateFormat() {
		return new SimpleDateFormat("yyyy.MM.dd");
	}
}
