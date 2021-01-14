<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkNovaEmpresa" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post" action="${ linkNovaEmpresa }">
			<label>Nome: </label>
			<input name="nome" type="text" />
			
			<label>Data abertura: </label>
			<input name="data" type="text" />
			
			<input type="submit" value="Cadastrar">
		</form>
	</body>
</html>