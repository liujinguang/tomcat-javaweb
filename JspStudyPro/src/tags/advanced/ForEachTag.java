package tags.advanced;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * This class is a tag handler class for the forEach custom tag. It is able to
 * iterate over an array of objects.
 * 
 * @author bob
 *
 */
public class ForEachTag extends SimpleTagSupport {
	private Object[] items;
	private String attributeName;

	public void setItems(Object[] items) {
		this.items = items;
	}

	public void setVar(String attributeName) {
		this.attributeName = attributeName;
	}

	@Override
	public void doTag() throws JspException, IOException {
		for (int i = 0; i < items.length; i++) {
			getJspContext().setAttribute(attributeName, items[i]);
			getJspBody().invoke(null);
		}
	}
}
