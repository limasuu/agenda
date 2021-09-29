package agenda.controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.modelo.Agenda;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String opcao= request.getParameter("opcao");
		Agenda agenda= (Agenda) getServletContext().getAttribute("AGENDA");
		String proximaPagina= "index.jsp";
		
		
		
		
		
		request.getRequestDispatcher(proximaPagina).forward(request, response);
	}
}
