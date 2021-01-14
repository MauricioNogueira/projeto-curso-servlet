<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL - Java Standard Taglib</title>
	</head>
	<body>
		Listagem de Empresas <br/>
		<c:if test="${ not empty empresa }">
			Empresa ${ empresa } foi cadastrado com sucesso!
		</c:if>
		
		<ul>
			<c:forEach items="${ empresas }" var="empresa">
				
				<li>
					${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy" />
					<a href="/gerenciador/removeEmpresa?id=${ empresa.id }">Remover</a>
					<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }">Alterar</a>
				</li>
			</c:forEach>
		</ul>
	</body>
</html>