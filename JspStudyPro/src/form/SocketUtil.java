package form;

import java.net.*;
import java.io.*;

/**
 * A shorthand way to create BufferedReaders and PrintWriters associated with a
 * Socket.
 * <P>
 * Taken from Core Servlets and JavaServer Pages 2nd Edition from Prentice Hall
 * and Sun Microsystems Press, http://www.coreservlets.com/. &copy; 2003 Marty
 * Hall and Larry Brown. May be freely used or adapted.
 */

public class SocketUtil {
	/** Make a BufferedReader to get incoming data. */

	public static BufferedReader getReader(Socket s) throws IOException {
		return (new BufferedReader(new InputStreamReader(s.getInputStream())));
	}

	/**
	 * Make a PrintWriter to send outgoing data. This PrintWriter will
	 * automatically flush stream when println is called.
	 */

	public static PrintWriter getWriter(Socket s) throws IOException {
		// Second argument of true means autoflush.
		return (new PrintWriter(s.getOutputStream(), true));
	}
}