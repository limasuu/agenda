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
		
		<%
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");				
		List<Aniversario> lista= (List<Aniversario>) request.getAttribute("lista");
		
		if(lista.isEmpty()){
		%>					
		<p>Não há aniversários cadastrados</p>
		<%}else{%>		
				
		
		<%if("confirmar-remover".equals(request.getAttribute("opcao")) ||
			"digitar-alterar-data".equals(request.getAttribute("opcao"))){				
		%>
		<p>Selecione um aniversário:</p>
		<form action="ServletControlador" method="post">
		<%}%>	
			
			<table>
			
				<tr>
					<td></td>
					<td>Pessoa</td>
					<td>Data</td>
				</tr>
			
				<%for(Aniversario a : lista){%>	
							
				<tr>
				
					<%if("confirmar-remover".equals(request.getAttribute("opcao")) ||
						"digitar-alterar-data".equals(request.getAttribute("opcao"))){				
					%>
					<td><input type="radio" name="id" value=<%=a.getId()%>></input></td>				
							
					<%}else{%>
					<td></td>	
					<%}%>	
			
					<td><%=a.getPessoa()%></td>
					<td><%=a.getData().format(formatter) %></td>
				</tr>
		
				<%}%>
			
			</table>
						
			<%if("confirmar-remover".equals(request.getAttribute("opcao")) ||
				"digitar-alterar-data".equals(request.getAttribute("opcao"))){				
			%>
			
			<br/>
			<input type="hidden" name="opcao" value=<%=request.getAttribute("opcao")%>></input>
			<input type="submit" value="Confirmar"/><br/>
			
		</form>		
		<%}%>
		
				
		<%}%>		
		<br/>
		
		<p><a href=ServletControlador>Voltar para a página inicial</a></p>
	
	</body>
</html>