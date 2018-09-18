package br.com.cmabreu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "atletas")
public class Atleta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "atleta_id", nullable = false, updatable = false)
	private Long atletaId;	
	
	@Column(name = "nome", length = 250, nullable = false)
	private String nome;

	@Column(name = "foto", length = 100, nullable = false)
	private String foto;
	
	@Column(name = "identidade", length = 100, nullable = false)
	private String identidade;

	@Column(name = "data_nascimento", length = 10, nullable = false)
	private String dataNascimento;
	
	
	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public Long getAtletaId() {
		return atletaId;
	}

	public void setAtletaId(Long atletaId) {
		this.atletaId = atletaId;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getIdentidade() {
		return identidade;
	}

	public void setIdentidade(String identidade) {
		this.identidade = identidade;
	}	
	
	
	
}
