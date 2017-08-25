package tags.basic;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/*
 * Heading tag allows the JSP developer to create a heading and specify alignment, 
 * background color, foreground color, font, etc.
 * */
public class HeadingTag extends SimpleTagSupport {
	private String align;
	private String bgColor;
	private String border;
	private String fgColor;
	private String font;
	private String size;

	public void setAlign(String align) {
		this.align = align;
	}

	public void setBgColor(String bgColor) {
		this.bgColor = bgColor;
	}

	public void setBorder(String border) {
		this.border = border;
	}

	public void setFgColor(String fgColor) {
		this.fgColor = fgColor;
	}

	public void setFont(String font) {
		this.font = font;
	}

	public void setSize(String size) {
		this.size = size;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		
		out.print("<table align=\"" + align + "\"\n" + 
				"         bgcolor=\"" + bgColor + "\"\n" +
				"         border=" + border + "\">\n");
		out.print("<tr><th>");
		out.print("<span style=\"color: " + fgColor + ";\n" + 
				"               font-family: " + font + ";\n" +
				"               font-size: " + size + "px;" +
				"\">\n");
		//output the content of the body
		getJspBody().invoke(null);
		out.print("</span></th></tr></table>" + 
		"<br clear=\"all\"><br>");
	}
}
