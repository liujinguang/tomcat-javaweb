package tags.advanced;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Tag handler class for the makeTable tag. It builds an HTML table and outputs
 * the records of the two-dimensional array provides as one of the attributes of
 * the tag in the JSP page.
 * 
 * @author bob
 *
 */
public class MakeTableTag extends SimpleTagSupport {
	private Object[][] rowItems;
	private String headerClass;
	private String bodyClass;

	public void setRowItems(Object[][] rowItems) {
		this.rowItems = rowItems;
	}

	public void setHeaderClass(String headerClass) {
		this.headerClass = headerClass;
	}

	public void setBodyClass(String bodyClass) {
		this.bodyClass = bodyClass;
	}

	@Override
	public void doTag() throws JspException, IOException {
		if (rowItems.length > 0) {
			JspWriter out = getJspContext().getOut();
			out.println("<table border=1");

			Object[] headingRow = rowItems[0];
			printOneRow(headingRow, getStyle(headerClass), out);
			
			for (int i = 1; i < rowItems.length; i++) {
				Object[] bodyRow = rowItems[i];
				printOneRow(bodyRow, getStyle(bodyClass), out);
			}
			out.println("</table>");
		}
	}

	private void printOneRow(Object[] columnEntries, String style, JspWriter out) throws IOException {
		out.println("  <tr " + style + ">");
		for (int i = 0; i < columnEntries.length; i++) {
			Object columnEntry = columnEntries[i];
			out.println("  <td>" + columnEntry + "</td>");
		}
		out.println("</tr>");
	}
	
	private String getStyle(String className) {
		if (className == null) {
			return "";
		} else {
			return "  class=\"" + headerClass + "\"";
		}
	}
}
