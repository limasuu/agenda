<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Agenda de aniversários</title>
	</head>
	<body>
		
		<h3>Salvar novo aniversário</h3>
		
		<form action="ServletControlador" method="post">
		
			<input type="hidden" name="opcao" value="confirmar-adicionar"/>
			
			<label for="pessoa">Nome da pessoa</label>
			<input type="text" name="pessoa"/><br/>
			
			<label for="dia">Dia</label>
			<input type="text" name="dia"/>
			
			<label for="mes">Mês</label>
			<input type="text" name="mes"/>
			
			<label for="ano">Ano</label>
			<input type="text" name="ano"/><br/>

			<input type="submit" value="Salvar"/><br/>
		</form>
		
		<p><a href=ServletControlador>Voltar para a página inicial</a></p>
	
	</body>
</html>