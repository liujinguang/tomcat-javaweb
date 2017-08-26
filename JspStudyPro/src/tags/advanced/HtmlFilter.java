package tags.advanced;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/** Tag that replaces special HTML characters (like less than and greater 
 * than signs) with their HTML character entities.
 * 
 * @author bob
 *
 */
public class HtmlFilter extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		// buffer tag body's output
		StringWriter stringWriter = new StringWriter();
		getJspBody().invoke(stringWriter);
		
		//filter out any special HTML characters (e.g., "<" becomes "&lt;")
		String output = ServletUtils.filter(stringWriter.toString());
		
		//send output to the client
		JspWriter out = getJspContext().getOut();
		out.print(output);
	}
}
