<%@ attribute name="length" required="false"%>

<%
	int len = 50;

	try {
	    len = Integer.parseInt(length);
	} catch (NumberFormatException nfe) {

	}
%>

<%= utils.Primes.nextPrime(utils.Primes.random(len)) %>