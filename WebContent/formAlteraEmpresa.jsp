<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/alteraEmpresa" var="linkAlteraEmpresa" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Alterar dados da Empresa
		
		<form method="post" action="${ linkAlteraEmpresa }">
			<input name="id" type="hidden" value="${ empresa.id }" />
			
			<label>Nome: </label>
			<input name="nome" type="text" value="${ empresa.nome }" />
			
			<label>Data abertura: </label>
			<input name="data" type="text" value="<fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy" />" />
			
			<input type="submit" value="Alterar">
		</form>
	</body>
</html>