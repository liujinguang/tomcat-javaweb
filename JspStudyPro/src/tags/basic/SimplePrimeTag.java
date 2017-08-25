package tags.basic;

import java.io.IOException;
import java.math.BigInteger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import utils.Primes;

public class SimplePrimeTag extends SimpleTagSupport {
	protected int length = 50;

	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		BigInteger prime = Primes.nextPrime(Primes.random(length));
		out.print(prime);
	}
}
