<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html manifest="">
  <!-- PAGE HEAD -->
  <jsp:include page="head.jsp" />
  <style type="text/css">
    /* show the move cursor as the user moves the mouse over the panel header.*/
    #draggablePanelList  {
    cursor: move;
    }
  </style>
  <body class="hold-transition skin-blue layout-top-nav">
   
<div class="modal modal-warning fade" id="modal-warning" tabindex="-1" role="dialog" aria-labelledby="modal-warning-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modal-warning-label">Confirmar Apagar?</h4>
            </div>
            <div class="modal-body" id="modalBody">
            	 <p>Você irá apagar o usuário <span id="userName"></span></p>
                 <p>O que você está prestes a fazer é irreversível.</p>
                 <p>Quer mesmo continuar?</p>
                 <p class="debug-url"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-danger btn-ok">Apagar Usuário</a>
            </div>
        </div>
    </div>
</div>  
  
  
<div class="modal modal-danger fade" id="modal-danger" tabindex="-1" role="dialog" aria-labelledby="modal-danger-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modalDangerLabel"></h4>
            </div>
            <div class="modal-body" id="modalDangerBody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" id="btnDangerOk">Ok</button>
            </div>
        </div>
    </div>
</div>  
  
  
<div class="modal modal-success fade" id="modal-success" tabindex="-1" role="dialog" aria-labelledby="modal-success-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modalSuccessLabel"></h4>
            </div>
            <div class="modal-body" id="modalSuccessBody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="btnSuccessOk">Ok</button>
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
        
        
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Gerenciar Usuários</h3>
              <div class="box-tools pull-right">
                <!-- Se quiser colocar algo a direita da barra...  -->
              </div>
              <!-- /.box-tools -->
            </div>
            <div class="mailbox-controls">
              <a href="${pageContext.servletContext.contextPath}/newUser" class="btn btn-default"><i class="fa fa-plus"></i></a>
            </div>
            <div class="box-body no-padding">
              <div class="table-responsive mailbox-messages">
                <table id="userTable" class="table table-hover table-striped"></table>
              </div>
            </div>
          </div>        
        
        
        
        </section>

      </div>

      <jsp:include page="footer.jsp" />
      <aside class="control-sidebar control-sidebar-dark">
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Administração</h3>
          </div>
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
          <div class="tab-pane" id="control-sidebar-settings-tab">
            <h3 class="control-sidebar-heading">Importadores Ativos</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript:;">
                  <h4 class="control-sidebar-subheading">
                    [XYF4A6] - BDGEX 
                    <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                    </span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:;">
                  <h4 class="control-sidebar-subheading">
                    [UUH34C] - DHN-CARTAS 
                    <span class="pull-right-container">
                    <span class="label label-success pull-right">30%</span>
                    </span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-success" style="width: 30%"></div>
                  </div>
                </a>
              </li>
            </ul>
          </div>
          <!-- /.tab-pane -->
        </div>
      </aside>
      <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->
    <!-- LOAD JAVASCRIPT FILES -->
    <jsp:include page="requiredscripts.jsp" />
    
	<!-- ALERT MODAL -->    
     <div class="modal modal-danger fade" id="modal-danger">
       <div class="modal-dialog">
         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span></button>
             <h4 class="modal-title">Algo deu errado!</h4>
           </div>
           <div class="modal-body">
             <p>Não foi possível completar a requisição solicitada. Entre em contato com o suporte.</p>
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-outline" data-dismiss="modal">Fechar</button>
           </div>
         </div>
         <!-- /.modal-content -->
       </div>
       <!-- /.modal-dialog -->
     </div>    
    
    
  </body>

  <script>
  
  function confirmDelete( userId, what ) {
	  var urlDelete = "${pageContext.servletContext.contextPath}/user/"+userId;
	  
	  $('#modal-warning').on('show.bs.modal', function(e) {
		  $(this).find('.btn-ok').click( function() {
			  $('#modal-warning').modal('hide');
			  
			    $.ajax({
			        url      : urlDelete,
			        method   : 'DELETE',
			        success : function (obj, textstatus) {
			        	console.log( textstatus );
			        	console.log( obj );

			        	if ( obj.type === 'success') { 
				        	$("#modalSuccessLabel").text("Concluído");
				        	$("#modalSuccessBody").text( obj.message );
	  			      	    $('#modal-success').on('show.bs.modal', function(e) {
				    		    $('#btnSuccessOk').click( function() {
				    		    	location.reload( true );
				    		    });
				      	    });  
				        	$('#modal-success').modal('show');
			        	}
			        	
			        	
			        	if ( obj.type === 'error') { 
				        	$("#modalDangerLabel").text("Erro");
				        	$("#modalDangerBody").text( obj.message );
	  			      	    $('#modal-danger').on('show.bs.modal', function(e) {
				    		    $('#btnDangerOk').click( function() {
				    		    	location.reload( true );
				    		    });
				      	    });
	  			      		$('#modal-danger').modal('show');
			        	}

			        	
			        	
			        	
			        },
			        failure : function (obj, textstatus) {
						//
			        }			        
			    });
			  
			  
		  });
	  });  
	  
	  $('#modal-warning').modal('show');
	  $("#userName").text( what );
	  
  }
  
  
  
  
    $.ajax({
        url: '${pageContext.servletContext.contextPath}/userlist',
        dataType: 'json',
        success: function (obj, textstatus) {
    		var usuarios = obj.data;
    		var dataSet = [];
    		
    		for ( var i=0; i<usuarios.length; i++ ) {
    			var usuario = usuarios[i];
    			var migData = [];
    			
    			var userId = usuario.id;
    			
    			// {label-warning , label-primary , label-danger }
    			var habilitado = usuario["enabled"];
    			var admin = usuario["admin"];
    			var habIcon = "label-danger";
    			var habString = "Desabilitado";
    			if( habilitado ) {
    				habIcon = "label-success";
    				habString = "Habilitado";
    			}
    			
    			var admIcon = "label-primary";
    			var admString = "USUÁRIO";
    			if( admin ) {
    				admIcon = "label-danger";
    				admString = "ADMINISTRADOR";
    			}    			
    			
    			var userFullName = usuario["fullName"];
    			migData.push( userFullName );
    			migData.push( usuario["name"] );
    			migData.push( '<img style="width:40px;height:40px;border:1px solid black;" src="${pageContext.servletContext.contextPath}/photos/' + usuario["profileImage"] + '">' );
    			migData.push( '<span class="label ' + habIcon + '">' + habString + '</span>' );
    			migData.push( '<span class="label ' + admIcon + '">' + admString + '</span>' );
    			migData.push( 
    					'<a href="${pageContext.servletContext.contextPath}/user/'+userId+'" class="btn btn-default"><i class="fa fa-pencil"></i></a> &nbsp;' +
    					' <a href="#" onclick="confirmDelete(' + userId + ',\''+userFullName+'\')" class="btn btn-default"><i class="fa fa-trash"></i></a>');
    			
    			dataSet.push( migData );
    		}
    		
    		$('#userTable').dataTable( {
    			'responsive': true,
    		    language: {
    		        searchPlaceholder: "Localizar",
    		        search: "_INPUT_",
    		        
    		        paginate: {
    		            first:    '«',
    		            previous: '‹',
    		            next:     '›',
    		            last:     '»'
    		        },
    		        emptyTable: "Nenhum Registro Encontrado",
    		        infoEmpty: "No entries to show",
    		        infoFiltered: " - filtered from _MAX_ records",
    		        aria: {
    		            paginate: {
    		                first:    'Primeiro',
    		                previous: 'Anterior',
    		                next:     'Próximo',
    		                last:     'Último'
    		            }
    		        }    		        
    		        
    		    },    			
    			data : dataSet,
                   columns: [
                       { title: "Nome" },
                       { title: "Login" },
                       { title: "Foto" },
                       { title: "Habilitado" },
                       { title: "Perfil" },
                       { title: "&nbsp;" }
                   ],
                   "bPaginate": true,
                   "bLengthChange": false,
                   "bFilter": true,
                   "bInfo": false,
                   "bAutoWidth": true,	                
    		});			    	
         
        },
        error: function (obj, textstatus) {
        	$('#modal-danger').modal({});
        }
    });	
    
  </script>    


</html>

