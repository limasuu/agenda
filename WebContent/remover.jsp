<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Agenda de anivers�rios</title>
	</head>
	<body>
		
		<h3>Remover um anivers�rio</h3>
		
		<form action="ServletControlador" method="post">
		
			<input type="hidden" name="opcao" value="confirmar-remover"/>
			
			<label for="id">Id</label>
			<input type="text" name="id"/><br/>
			
			<input type="submit" value="Remover"/><br/>
		</form>
		
		<p><a href=ServletControlador>Voltar para a p�gina inicial</a></p>
	
	</body>
</html>