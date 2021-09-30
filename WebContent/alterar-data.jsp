<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Agenda de aniversários</title>
	</head>
	<body>
		
		<h3>Alterar data</h3>
		
		<p>Nova data:</p>
		
		<form action="ServletControlador" method="post">
		
			<input type="hidden" name="opcao" value="confirmar-alterar-data"/>
			<input type="hidden" name="id" value=<%=request.getAttribute("id") %>></input>
						
			<label for="dia">Dia</label>
			<input type="text" name="dia"/>
			
			<label for="mes">Mês</label>
			<input type="text" name="mes"/>
			
			<label for="ano">Ano</label>
			<input type="text" name="ano"/><br/>

			<input type="submit" value="Alterar"/><br/>
		</form>
		
		<p><a href=ServletControlador>Voltar para a página inicial</a></p>
	
	</body>
</html>