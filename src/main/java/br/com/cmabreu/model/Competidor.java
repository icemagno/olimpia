package br.com.cmabreu.model;

import java.util.ArrayList;
import java.util.List;

public class Competidor {
	private Empresa empresa;
	private List<Atleta> atletas;
	private Integer pontos;

	public Integer getPontos() {
		return pontos;
	}

	public void setPontos(Integer pontos) {
		this.pontos = pontos;
	}

	public Competidor() {
		this.atletas = new ArrayList<Atleta>();
	}
	
	public Empresa getEmpresa() {
		return empresa;
	}
	
	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
	
	public List<Atleta> getAtletas() {
		return atletas;
	}
	
	public void setAtletas(List<Atleta> atletas) {
		this.atletas = atletas;
	}
	
	
}
