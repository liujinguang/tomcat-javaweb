package tags.basic;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DebugTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		PageContext context = (PageContext) getJspContext();

		HttpServletRequest request = (HttpServletRequest) context.getRequest();

		if (request.getParameter("debug") != null) {
			getJspBody().invoke(null);
		}
	}
}
