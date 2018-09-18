package br.com.cmabreu.misc;

import java.util.ArrayList;
import java.util.List;

import br.com.cmabreu.model.Atleta;

public class Atletas {
	private List<Atleta> atletas;
	
	public List<Atleta> getAtletas() {
		return atletas;
	}
	
	public Atletas() {
		this.atletas = new ArrayList<Atleta>();
		
		Atleta a1 = new Atleta();
		a1.setAtletaId(1L);
		a1.setFoto("a1.jpg");
		a1.setIdentidade("MG 14.053.017");
		a1.setNome("RONAN SOUZA");
		a1.setDataNascimento("06/04/1987");
		
		Atleta a2 = new Atleta();
		a2.setAtletaId(2L);
		a2.setFoto("a2.jpg");
		a2.setIdentidade("MG 13.303.842");
		a2.setNome("GLAYSSON CLAYTON");
		a2.setDataNascimento("30/07/1987");

		Atleta a3 = new Atleta();
		a3.setAtletaId(3L);
		a3.setFoto("a3.jpg");
		a3.setIdentidade("MG 15.382.833");
		a3.setNome("DANILO PERES NOBRE");
		a3.setDataNascimento("08/07/1989");

		Atleta a4 = new Atleta();
		a4.setAtletaId(4L);
		a4.setFoto("a4.jpg");
		a4.setIdentidade("00.786.310-3");
		a4.setNome("BRUNO SANTOS");
		a4.setDataNascimento("01/06/1988");
		
		
		this.atletas.add(a1);
		this.atletas.add(a2);
		this.atletas.add(a3);
		this.atletas.add(a4);
		
		
	}

}
