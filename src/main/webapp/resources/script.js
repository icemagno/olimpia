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
  
  
  
function loadAtletas() {
	

    $.ajax({
        url: '/olimpia/atletas',
        dataType: 'json',
        success: function (obj, textstatus) {
        	var usuarios = obj.atletas;
    		var dataSet = [];
    		
    		for ( var i=0; i<usuarios.length; i++ ) {
    			var usuario = usuarios[i];
    			var migData = [];
    			var userId = usuario.atletaId;

        		//console.log( usuario );
    			
    			var userFullName = usuario["nome"];
    			migData.push( userFullName );
    			migData.push( '<img style="width:50px;height:50px;border:1px solid black;" src="/olimpia/resources/fotos/' + usuario["foto"] + '">' );
    			migData.push( '<div style="width:50px;height:50px;border:1px solid black;" id="qrcode'+userId+'"></div>' );
    			migData.push( usuario["identidade"] );

    			migData.push( 
    					'<a href="/olimpia/user/'+userId+'" class="btn btn-default"><i class="fa fa-pencil"></i></a> &nbsp;' +
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
                       { title: "Foto" },
                       { title: "Teste QR" },
                       { title: "Identidade" },
                       { title: "&nbsp;" }
                   ],
                   "bPaginate": true,
                   "bLengthChange": false,
                   "bFilter": true,
                   "bInfo": false,
                   "bAutoWidth": true,	                
    		});			    	
         
    		
    		for ( var i=0; i<usuarios.length; i++ ) {
    			var usuario = usuarios[i];
    			var userId = usuario.atletaId;    			
    			$('#qrcode' + userId).qrcode({width: 50,height: 50,text: usuario.nome } );
    		}

    		
        },
        error: function (obj, textstatus) {
        	$('#modal-danger').modal({});
        }
    });	
    
}    
