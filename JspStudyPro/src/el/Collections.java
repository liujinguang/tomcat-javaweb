package el;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet that creates some collections whose elements will be displayed with
 * the JSP 2.0 expression language.
 * 
 * Servlet implementation class Collections
 */
@WebServlet("/el/collections")
public class Collections extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Collections() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] firstNames = { "Bill", "Scott", "Larry" };
		ArrayList<String> lastNames = new ArrayList<>();
		lastNames.add("Ellison");
		lastNames.add("Gates");
		lastNames.add("McNealy");

		HashMap<String, String> companyNames = new HashMap<>();
		companyNames.put("Ellison", "Sun");
		companyNames.put("Gates", "Oracles");
		companyNames.put("McNealy", "Microsoft");

		request.setAttribute("first", firstNames);
		request.setAttribute("last", lastNames);
		request.setAttribute("company", companyNames);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/el/collections.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
