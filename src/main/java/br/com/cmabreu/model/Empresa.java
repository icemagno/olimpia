package br.com.cmabreu.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name = "empresas")
public class Empresa {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "empresa_id", nullable = false, updatable = false)
	private Integer empresaId;		
	
	@Column(name = "nome", length = 250, nullable = false)
	private String nome;
	
	@Column(name = "responsavel", length = 250, nullable = false)
	private String responsavel;
	
	@Column(name = "cnpj", length = 50, nullable = false)
	private String cnpj;
	
	@Column(name = "contato", length = 250, nullable = false)
	private String contato;
	
	@Column(name = "email", length = 100, nullable = false)
	private String email;
	
    @OneToMany(orphanRemoval=true,  mappedBy="empresa", fetch = FetchType.EAGER)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)	
	private List<Atleta> atletas;
	
	public Empresa() {
		this.atletas = new ArrayList<Atleta>();
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Atleta> getAtletas() {
		return atletas;
	}

	public void setAtletas(List<Atleta> atletas) {
		this.atletas = atletas;
	}

	
	
	
}
