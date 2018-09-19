package br.com.cmabreu.model;

public class Jogo {
	private Competidor competidor1;
	private Competidor competidor2;
	private String dataEvento;
	private String local;
	private String sumula;
	
	public Competidor getCompetidor1() {
		return competidor1;
	}

	public void setCompetidor1(Competidor competidor1) {
		this.competidor1 = competidor1;
	}

	public Competidor getCompetidor2() {
		return competidor2;
	}

	public void setCompetidor2(Competidor competidor2) {
		this.competidor2 = competidor2;
	}

	public String getDataEvento() {
		return dataEvento;
	}
	
	public void setDataEvento(String dataEvento) {
		this.dataEvento = dataEvento;
	}
	
	public String getLocal() {
		return local;
	}
	
	public void setLocal(String local) {
		this.local = local;
	}
	
	public String getSumula() {
		return sumula;
	}
	
	public void setSumula(String sumula) {
		this.sumula = sumula;
	}
	
	
	
}
