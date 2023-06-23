package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.AdministrativoControlador;
import implementacion.ClienteControlador;
import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import implementacion.ProfesionalControlador;

/**
 * Servlet implementation class ServletUpdateUsuario
 */
@WebServlet("/ServletUpdateUsuario")
public class ServletUpdateUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "index.jsp";
		String option = request.getParameter("option");
		int id = Integer.parseInt(request.getParameter("id"));
		
		switch (option) {

		case "formUpdateAdministrativo":
			AdministrativoControlador administrativoControlador = new AdministrativoControlador();
			Administrativo administrativo = administrativoControlador.findAdministrativoById(id);
			request.setAttribute("administrativo", administrativo);
			url = "updateAdministrativo.jsp";
			break;
		case "formUpdateProfesional":
			ProfesionalControlador profesionalControlador = new ProfesionalControlador();
			Profesional profesional = profesionalControlador.findProfesionalById(id);
			request.setAttribute("profesional",profesional);
			url = "updateProfesional.jsp";
			break;
		case "formUpdateCliente":
			ClienteControlador clienteControlador = new ClienteControlador();
			Cliente cliente = clienteControlador.findClienteById(id);
			request.setAttribute("cliente", cliente);
			url = "updateCliente.jsp";
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}