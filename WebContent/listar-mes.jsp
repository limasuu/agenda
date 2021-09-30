<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Agenda de anivers�rios</title>
	</head>
	<body>
		
		<h3>Listar anivers�rios por m�s</h3>
		
		<form action="ServletControlador" method="post">
		
			<input type="hidden" name="opcao" value="confirmar-listar-mes"/>
			
			<label for="mes">M�s</label>
			
			<select name="mes">
				<option value="1">Janeiro</option>
				<option value="2">Fevereiro</option>
				<option value="3">Mar�o</option>
				<option value="4">Abril</option>
				<option value="5">Maio</option>
				<option value="6">Junho</option>
				<option value="7">Julho</option>
				<option value="8">Agosto</option>
				<option value="9">Setembro</option>
				<option value="10">Outubro</option>
				<option value="11">Novembro</option>
				<option value="12">Dezembro</option>
			</select><br/>
			
			<input type="submit" value="Listar"/><br/>
		</form>
		
		<p><a href=ServletControlador>Voltar para a p�gina inicial</a></p>
	
	</body>
</html>