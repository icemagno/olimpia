<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html manifest="">
   <jsp:include page="head.jsp" />
   <body class="hold-transition" style="margin:0px; padding:0px">
   
      <div class="page-wrap">
      
         <header class="navbar fixed-top navbar-empty">
            <div class="container">
               <div class="mx-auto">
                  <div style="margin:0 auto; width:50px;height:50px">
                     <!-- <img style="width:40px;height:40px" src="/olimpia/resources/img/logo.png"> -->
                  </div>
               </div>
            </div>
         </header>
         
			<div style="min-height: calc(100vh - 150px);">
			         
		         <div class="container navless-container" style="padding: 65px 15px;max-width: 960px;">

					<c:if test = "${param.error}">
				        <div class="alert alert-danger alert-dismissible">
				          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				          <h4><i class="icon fa fa-ban"></i>Dados Inválidos</h4>
				          Não foi possível entrar no sistema com as credenciais fornecidas.
				        </div>
					</c:if>
					      
		            <section class="content">
		               <div class="row">
		                  <div class="col-sm-7 brand-holder">
		                     <h1>
		                        <img style="width:100px;height:60px" src="/olimpia/resources/img/logo.png"> Olimpia
		                     </h1>
		                     <h4>Sistema de Gerenciamento de Atletas</h4>
		                     <p style="border-bottom: 1px dotted #cacaca;padding-bottom:20px" class="text-justify">
		                        Texto explicativo do sistema.<br><br>
		                        <b>Entre com usuário 'admin' com a senha 'admin' para entrar.</b>
		                     </p>
		                      
		                     <div style="margin:0 auto">
		                     	 
			                     <a target="__BLANK" href="https://www.facebook.com.br/firjanoficial">
			                     	<img style="width:29px;height:39px" src="resources/img/face.png">
			                     </a>
			                     <a target="__BLANK" href="http://www.twitter.com/firjan">
			                     	<img style="width:35px;height:39px" src="resources/img/twitter.png">
			                     </a>
			                     
			                     <a target="__BLANK" href="http://www.youtube.com/sistemafirjan">
			                     	<img style="width:35px;height:39px" src="resources/img/youtube.png">
			                     </a>
			                     <a target="__BLANK" href="https://www.linkedin.com/company/firjan">
			                     	<img style="width:35px;height:39px" src="resources/img/linked.png">
			                     </a>
			                     
			                     
		                     </div>
		                     	
		                     
		                  </div>
		                  <div class="col-sm-5">
		                     <div class="box box-primary">
                                 <form action="login" role="form" method="post">
	                              <div class="box-body">
                                    <div class="form-group">
                                       <label for="user_login">Nome de Login</label>
                                       <input placeholder="Usuário" class="form-control" autocomplete="off" autofocus="autofocus" autocapitalize="off" autocorrect="off" required="required" name="username" id="user_login" type="text">
                                    </div>
                                    <div class="form-group">
                                       <label for="user_password">Senha</label>
                                       <input autocomplete="off" placeholder="Senha" class="form-control" required="required" name="password" id="user_password" type="password">
                                    </div>
                                    <div></div>
                                    <div class="box-footer">
                                       <input name="commit" value="Entrar" class="btn btn-block btn-success btn-lg" type="submit">
                                       <input type="hidden" class="form-control" name="error" value="">
                                    </div>
                                   </div> 
                                 </form>
		                     </div>
		                  </div>
		               </div>
		            </section>
            
            	</div>
            
            
         </div>
         <hr class="footer-fixed">
         <div class="container footer-container">
            <div class="footer-links">
               Olimpia v1.2.234
            </div>
         </div>
      </div>
      <jsp:include page="requiredscripts.jsp" />
   </body>
</html>

