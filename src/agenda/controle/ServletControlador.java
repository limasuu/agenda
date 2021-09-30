package agenda.controle;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.modelo.Agenda;
import agenda.modelo.Aniversario;

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

		if("adicionar".equals(opcao))
			proximaPagina= "adicionar.jsp";

		else if("confirmar-adicionar".equals(opcao)) {

			int dia= Integer.parseInt(request.getParameter("dia"));
			int mes= Integer.parseInt(request.getParameter("mes"));
			int ano= Integer.parseInt(request.getParameter("ano"));
			String pessoa= request.getParameter("pessoa");			
			LocalDateTime data= LocalDateTime.of(ano, mes, dia, 0, 0);

			Aniversario aniversario= new Aniversario(pessoa, data);

			agenda.adicionarAniversario(aniversario);		

		}if("remover".equals(opcao))
			proximaPagina= "remover.jsp";

		else if("confirmar-remover".equals(opcao)) {

			int id= Integer.parseInt(request.getParameter("id"));

			agenda.removerAniversario(id);		

		}else if("listar".equals(opcao)) {

			request.setAttribute("lista", agenda.getAniversarios());
			proximaPagina= "listar.jsp";		
		}






		request.getRequestDispatcher(proximaPagina).forward(request, response);
	}
}
