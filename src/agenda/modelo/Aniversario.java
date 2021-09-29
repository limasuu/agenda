package agenda.modelo;

import java.time.LocalDateTime;

public class Aniversario {	
	
	private static int TOTAL_ID= 0;
	
	private int id;
	private String pessoa;
	private LocalDateTime data;	
	
	public Aniversario(String pessoa, LocalDateTime data) {
	
		this.id= ++TOTAL_ID;
		this.pessoa= pessoa;
		this.data= data;
	}

	public int getId() {
		return id;
	}
	
	public String getPessoa() {
		return pessoa;
	}
	
	public void setPessoa(String pessoa) {
		this.pessoa = pessoa;
	}
	
	public LocalDateTime getData() {
		return data;
	}
	
	public void setData(LocalDateTime data) {
		this.data = data;
	}
}
