<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html manifest="">
  <jsp:include page="head.jsp" />

  <body class="hold-transition skin-blue layout-top-nav">
  
        <div class="modal modal-danger fade" id="modal-danger">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Erro</h4>
              </div>
              <div class="modal-body">
                <p id="modalBody">${error}</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline" data-dismiss="modal">Fechar</button>
              </div>
            </div>
          </div>
        </div>
  
  
  
    <div class="wrapper">
      <!-- Main Header -->
      <header class="main-header">
        <!-- PAGE LOGO -->
        
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          
          
          <a href="#" id="sidebarButton" class="sidebar-toggle" data-toggle="push-menu" role="button">
          
          
          <span class="sr-only">Mudar Navegação</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li>
                 <a href="/olimpia/logout"><i class="fa fa-power-off text-red"></i> &nbsp;</a>
              </li>
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Main content -->
        
        
        <section class="content container-fluid">
        
          <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
              <div class="box box-primary">
              
            <div class="box-header with-border">
              <i class="fa fa-user-plus"></i>
              <h3 class="box-title">Criar Novo Usuário</h3>
            </div>              
              
              
                <div class="box-body box-profile">

            <div class="box-header with-border">
                  <img id="img-upload" class="profile-user-img img-responsive img-circle" style="width:100px;height:100px" src="${pageContext.servletContext.contextPath}/photos/${referenceUser.profileImage}" alt="User profile picture">
            </div>

            <form:form enctype="multipart/form-data" modelAttribute="referenceUser" id="theForm" action="${pageContext.servletContext.contextPath}/user" method="POST" role="form">
            	
              <div class="box-body">
                
                <form:input type="hidden" path="id" name="id" />
                <form:input type="hidden" path="profileImage" name="profileImage" />
                <input type="hidden" value="create" name="method" />
                
                <div class="form-group">
                  <label for="userId">Nome de Login</label>
                  <form:input type="email" class="form-control" id="name" name="name" path="name" placeholder="Usuário" />
                </div>
                
                <div class="form-group">
                  <label for="fullName">Nome Completo</label>
                  <form:input type="text" class="form-control" name="fullName" id="fullName" path="fullName" placeholder="Nome Completo" />
                </div>

                <div class="form-group">
                  <label for="origem">Organização</label>
                  <form:input type="text" class="form-control" id="origem" name="origem" path="origem" placeholder="Organização" />
                </div>

                <div class="form-group">
                  <label for="setor">Setor</label>
                  <form:input type="text" class="form-control" id="setor" path="setor" name="setor" placeholder="Setor" />
                </div>
                
                <div class="form-group">
                  <label for="telefone">Telefone</label>
                  <form:input type="text" class="form-control" id="telefone" name="telefone" path="telefone" placeholder="Telefone" />
                </div>
                                
                <div class="form-group">
                  <label for="telefone">Função</label>
                  <form:input type="text" class="form-control" id="funcao" name="funcao" path="funcao" placeholder="Telefone" />
                </div>

                <div class="form-group">
                  <label for="password">Senha</label>
                  <input type="password" class="form-control" id="password" name="password"  placeholder="Senha" >
                </div>

                <div class="form-group">
                  <label for="password2">Confirme a Senha</label>
                  <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirme Senha">
                </div>
                
                
	              <div class="form-group">
	                <label for="userRoles">Perfis</label>
	                <select name="userRoles" id="userRoles" class="form-control select2" multiple="multiple" data-placeholder="Selecione os perfis" style="width: 100%;">
	                  <option value="ROLE_USER">Usuário HADES</option>
	                  <option value="ROLE_ADMIN">Administrador HADES</option>
	                </select>
	              </div>                    
                
			    <div class="form-group">
			        <label>Imagem de Perfil</label>
			        
			        <div class="input-group">
			            <span class="input-group-btn">
			                <span class="btn btn-default btn-file">
			                    Procurar… <input type="file" id="profileImageFile" name="profileImageFile">
			                </span>
			            </span>
			            <input type="text" class="form-control" readonly>
			        </div>
			        
			    </div>
                
                
                <div class="checkbox">
                   <form:checkbox name="enabled" path="enabled" class="flat-red" /> Habilitado
                </div>
                
              </div>

              <div class="box-footer">
                <button type="button" id="formSubmit" class="btn btn-primary pull-right">Enviar</button>
              </div>
            </form:form>




                </div>
              </div>
            </div>

          </div>

        
        </section>

      </div>
	      <jsp:include page="footer.jsp" />
      <div class="control-sidebar-bg"></div>
    </div>
    
    <jsp:include page="requiredscripts.jsp" />
  </body>


	<script>

	var selectedRoles = [];
    <c:forEach var="role" items="${referenceUser.roles}">
    selectedRoles.push('${role.roleName}');
	</c:forEach>
	$('#userRoles').val( selectedRoles );
	$('#userRoles').trigger('change');
	
	var element = null;
	
	$("#modal-danger").on("hidden.bs.modal", function () {
	    element.focus();
	});	
	
	
	$( "#formSubmit" ).click(function() {
		var password = $("#password").val();
		var password2 = $("#password2").val();
		var username = $("#username").val();
		var fullName = $("#fullName").val();
		
		if( password === null || password ==="" ) {
			$("#modalBody").text('A senha não pode ser em branco.');
			$('#modal-danger').modal('show');
			return false;
		}
		
		if( password !== password2 ) {
			$("#modalBody").text('As senhas são diferentes. Verifique se digitou corretamente.');
			$('#modal-danger').modal('show');
			element = $("#password");
			return false;
		}

		if( username === "" ) {
			$("#modalBody").text('O nome de login não pode ser deixado em branco.');
			$('#modal-danger').modal('show');
			element = $("#username");
			return false;
		}		

		if( fullName === "" ) {
			$("#modalBody").text('O nome completo não pode ser deixado em branco.');
			$('#modal-danger').modal('show');
			element = $("#fullName");
			return false;
		}
		
		if( $('#userRoles').val().length === 0) {
			$("#modalBody").text('Ao menos um perfil deverá ser selecionado.');
			$('#modal-danger').modal('show');
			element = $("#userRoles");
			return false;
		}
		
		$("#formSubmit").prop("disabled",true);
		$("#theForm").submit();
		
	});
	
	
	
	
	    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	        checkboxClass: 'icheckbox_flat-green',
	        radioClass   : 'iradio_flat-green'
	    })    
    
	    initUpload();
	
	    <c:if test="${not empty error}">$('#modal-danger').modal('show');</c:if>
	    
	    
	    
	    
	</script>

</html>

