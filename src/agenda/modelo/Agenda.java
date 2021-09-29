package agenda.modelo;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Agenda {

	HashMap<Integer, Aniversario> aniversarios= new HashMap<Integer, Aniversario>();

	public void adicionarAniversario(Aniversario aniversario) {

		aniversarios.put(aniversario.getId(), aniversario);
	}

	public void removerAniversario(int id) {

		aniversarios.remove(id);
	}

	public List<Aniversario> getAniversarios(){

		return List.copyOf(aniversarios.values());
	}
	
	public List<Aniversario> getAniversariosPorMes(int mes){
		
		List<Aniversario> aux= new ArrayList<Aniversario>();
		
		for(Aniversario a : aniversarios.values())
			if(mes == a.getData().getMonthValue())
				aux.add(a);

		return aux;
	}

	public void editarDataAniversario(int id, LocalDateTime data) {
		
		aniversarios.get(id).setData(data);
	}
}
