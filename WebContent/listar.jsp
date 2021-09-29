<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="agenda.modelo.Aniversario" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Agenda de aniversários</title>
	</head>
	<body>
		
		<h3>Lista de aniversários</h3>
		
		<table>
		
			<tr>
				<td></td>
				<td>Pessoa</td>
				<td>Data</td>
			</tr>
		
			<%
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			
			List<Aniversario> lista= (List<Aniversario>) request.getAttribute("lista");
			
			for(Aniversario a : lista){
			%>
		
			<tr>
				<td><%=a.getId()%></td>
				<td><%=a.getPessoa()%></td>
				<td><%=a.getData().format(formatter) %></td>
			</tr>
		
			<%}%>
		
		</table>
		
		<br/><br/>
		
		<p><a href=ServletControlador>Voltar para a página inicial</a></p>
	
	</body>
</html>