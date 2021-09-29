package agenda.controle;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import agenda.modelo.Agenda;

@WebListener
public class ContextoListener implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent evento) {
		
		ServletContext contexto= evento.getServletContext();
		contexto.setAttribute("AGENDA", new Agenda());		
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent evento) {
		
		ServletContext contexto= evento.getServletContext();
		contexto.removeAttribute("AGENDA");	
	}
}
