package tags.basic;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

/**
 * Utility class whose method is used as an JSP EL function
 * 
 * @author bob
 *
 */
public class Util {
	public static String information(HttpServletRequest request) {
		String result = "";
		result += "Agent Header: " + request.getHeader("User-Agent");
		result += "<br>";
		result += "Parameters: <br>";
		Enumeration<String> paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String paramName = paramNames.nextElement();
			result += paramName + "<br>";
		}
		
		return result;
	}
}
