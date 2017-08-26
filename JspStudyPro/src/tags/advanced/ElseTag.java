package tags.advanced;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Tag handler class for the else tag. It gets a hold of the IfTag instance and
 * processes its body if the value test attribute of the IfTag is false. It also
 * throws a JspTagException if the parent of this tag is anything other than an
 * instance of the IfTag class.
 * 
 * @author bob
 *
 */
public class ElseTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		// get parent tag (if tag)
		IfTag ifTag = null;

		try {
			ifTag = (IfTag) getParent();
		} catch (ClassCastException e) {
			String msg= "Error: 'else' must be inside 'if'.";
			throw new JspTagException(msg);
		}
		
		if (ifTag != null) {
			//decide whether to output body of else
			if(!ifTag.isTest()) {
				getJspBody().invoke(null);
			}
		} else {
			String msg= "Error: 'else' must be inside 'if'.";
			throw new JspTagException(msg);
		}
	}
}
