package br.com.cmabreu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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

	@Column(name = "cpf", length = 20, nullable = false)
	private String cpf;

	@Column(name = "data_nascimento", length = 10, nullable = false)
	private String dataNascimento;

	@Column(name = "data_admissao", length = 10, nullable = false)
	private String dataAdmissao;

	@Column(name = "modalidade", length = 100, nullable = false)
	private String modalidade;
	
	@Column(name = "posicao", length = 100, nullable = false)
	private String posicao;
	
	@Column(name = "matricula", length = 10, nullable = false)
	private String matricula;
	
	@ManyToOne()
	@JoinColumn(name="atleta_id", foreignKey = @ForeignKey(name = "fk_empresa_atleta"))
	private Empresa empresa;
	
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

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getDataAdmissao() {
		return dataAdmissao;
	}

	public void setDataAdmissao(String dataAdmissao) {
		this.dataAdmissao = dataAdmissao;
	}

	public String getModalidade() {
		return modalidade;
	}

	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}

	public String getPosicao() {
		return posicao;
	}

	public void setPosicao(String posicao) {
		this.posicao = posicao;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}	
	
	
	
}
