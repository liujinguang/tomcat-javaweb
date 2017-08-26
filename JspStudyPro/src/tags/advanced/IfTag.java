package tags.advanced;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Tag handler class for the if tag. It relies on the required 'test' attribute
 * and stores the evaluated condition in the test instance variable to be later
 * accessed by the ThenTag and ElseTag.
 * 
 * @author bob
 *
 */
public class IfTag extends SimpleTagSupport {
	private boolean test;

	public boolean isTest() {
		return test;
	}

	public boolean getTest() {
		return test;
	}

	public void setTest(boolean test) {
		this.test = test;
	}

	@Override
	public void doTag() throws JspException, IOException {
		getJspBody().invoke(null);
	}
}
