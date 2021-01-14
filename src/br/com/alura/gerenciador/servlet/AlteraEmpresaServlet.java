package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AlteraEmpresaServlet
 */
@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramId = request.getParameter("id");
		String nomeEmpresa = request.getParameter("nome");
		String dataEmpresa = request.getParameter("data");
		
		SimpleDateFormat d = new SimpleDateFormat("dd/MM/yyyy");
		
		Integer id = Integer.parseInt(paramId);
		
		Banco banco = new Banco();
		Empresa empresa = banco.findEmpresa(id);
		
		Date novaData;
		
		try {
			empresa.setNome(nomeEmpresa);
			novaData = d.parse(dataEmpresa);
			empresa.setDataAbertura(novaData);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			throw new ServletException(e);
		}
		
		response.sendRedirect("listaEmpresas");
	}
}
