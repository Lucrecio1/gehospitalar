<%-- 
    Document   : noticias
    Created on : 29/mar/2023, 2:28:55
    Author     : Bennazir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!-- Código do link bootstrap -->
            <link href="css/bootstrap.css" rel="stylesheet">  
        <meta name="keywords" content="" />
        <link href="css/css.css" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
      
        <link rel="shortcut icon" href="icon/youtube_ico.ico">
        <title>GALERIA</title>
    <style>
        body {
  font-family: 'Roboto', sans-serif;
  color: #031b36;
  background-color: dodgerblue;
  overflow-x: hidden;
}
            .footer-area{
			padding: 2em 5%;
			font-size: 0.7rem;
               background-color: black;
	}
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
             <div class="col-lg-12">
          <div class="container">
          <!-- <a class="navbar-brand" href="#">Navbar</a> -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav navbar-left">
               <img class="rounded" src="imagens/logo.png" href="index.jsp" style="width: 50px; height: 50px; " >
             </ul>
            <ul class="navbar-nav mr-auto">

              <li class="nav-item">
               <a class="navbar-brand" href="index.jsp">Maternidade Lucrécia Paim<span class="sr-only">(current)</span></a>
              </li>
            <!--   <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li> -->
            <li class="nav-item">
                <a class="nav-link " href="index.jsp">Início</a>
            </li>
              <li class="nav-item">
                <a class="nav-link " href="sobrenos.jsp">Sobre Nós</a>
              </li>

              <li class="nav-item">
                <a class="nav-link " href="noticias.jsp">Galeria</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link " href="servico.jsp">Serviços</a>
              </li>
              
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Mais
            </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Artigos</a>
                  <a class="dropdown-item" href="#">Eventos</a>
                  <a class="dropdown-item"  class="nav-link " href data-toggle="modal" data-target="#ExemploModalCentralizado" >Bloco Informativo</a>

          </div>        
       </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
            <li class="nav-item">

  
                   <a class="btn btn-outline-primary "  href="login.jsp">Entrar</a>
              </li>
            </ul>
          </div>
        </div>
        </div>
        </nav>
                
                
                   <!-- Inicio do BOTÃO ARRIBA! -->
<span class="ir-arriba icon-arrow-up2"></span> 
<section class="contido">
        <!-- Fim da Nav bar -->
     
           <!-- Inicio do Modal do Login  -->

        <form id="formulario" method="post" action="primeira">     
            <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
              <div class="modal-dialog" role="document">
                 <div class="modal-content">
                   <div class="modal-header text-center">
                            <!-- Logotipo do ISP KILAMBA  -->
                     <img src="imagens/login.png" width="22px;" class="img-responsive">
                      <h4 class="modal-title w-100 font-weight-bold">Iniciar Sessão</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                   </div>
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                          <i class="glyphicon glyphicon-user"></i>
                          <label data-error="wrong" data-success="right" for="defaultForm-name"> Nome do Usuário</label>
                          <input type="text" id="usuario" name="usuario" class="form-control validate" placeholder="Informe o Usuário" required />
                        </div>
                      <div class="md-form mb-4">
                         <i class="glyphicon glyphicon-lock"></i>
                          <label data-error="wrong" data-success="right" for="defaultForm-pass">Senha</label>
                         <i class="fas fa-lock prefix grey-text"></i>
                         <input type="password" id="defaultForm-pass" name="senha" class="form-control validate" placeholder="Informe a Senha" required/>
                      </div>
                    </div>
                   <div class="modal-footer d-flex justify-content-center">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button input type="submit" name="aceitar" value="Aceptar" class="btn btn-sm btn-primary">Iniciar sessão</button>

                            <a href="#criar_conta.jsp" data-toggle="modal" data-target="#modalRegisterForm"  >
                               <button type="button"  class="btn btn-sm  btn-success">Criar conta</button>
                            </a>

                            <a href="#esqueci_senha.jsp" >
                               <button type="button" class="btn btn-sm  btn-danger">Esqueci a senha</button>
                            </a>
                        </div>
                  </div>
                </div>
            </div>
          </div>
        </form>
        <!-- Fim do Modal do Login  -->>
        <script>
              $("#formulario").validate();
            </script>

         <!-- Inicio do Modal de Cadastro! -->
        
    <form id="formulario" method="post" action="#proc_cadastro.jsp"> 
        <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
             <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header text-center">
                    <img src="imagens/logotipo.JPG" width="22px;" class="img-responsive">
                    <h4 class="modal-title w-100 font-weight-bold">Criar conta</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body mx-3">
                    <div class="md-form mb-4">
                      <i class="fas fa-user prefix grey-text"></i>
                      <label data-error="wrong" data-success="right" for="orangeForm-name">Nome</label>
                      <input type="text" id="orangeForm-name"  name="nome" placeholder="Seu nome" class="form-control validate" required/>

                    </div>
              <div class="md-form mb-4">
                      <i class="fas fa-envelope prefix grey-text"></i>
                       <label data-error="wrong" data-success="right" for="orangeForm-email">E-mail</label>
                      <input type="email" id="orangeForm-email" name="email" placeholder="Endereço de E-mail" class="form-control validate" required/>

                    </div>
                     <div class="md-form mb-4">
                      <i class="fas fa-user prefix grey-text"></i>
                       <label data-error="wrong" data-success="right" for="orangeForm-name">Usuário</label>
                      <input type="text" id="orangeForm-name"  name="nome_usuario" placeholder="Nome de Usuário" class="form-control validate" required/>

                    </div>

                     <div class="md-form mb-4">
                      <i class="fas fa-user prefix grey-text"></i>
                     <label data-error="wrong" data-success="right" for="orangeForm-name">Terminal</label>
                      <input type="text" id="orangeForm-name"  name="telefone" placeholder="Número de telefone" class="form-control validate" required/>

                    </div>

                    <div class="md-form mb-4">
                      <i class="fas fa-lock prefix grey-text"></i>
                      <label data-error="wrong" data-success="right" for="orangeForm-pass">Senha</label>
                      <input type="password" id="orangeForm-pass" name="senha" placeholder="Sua senha" class="form-control validate" required/>
                    </div>


                       <div class="md-form mb-4">
                      <label for="inputPassword3" class="col-sm-2 control-label">Genero</label>
                      <div class="col-md-14">
                        <select class="form-control" name="sexo" required/>
                          <option></option>
                          <option value="1">Masculino</option>
                          <option value="2">Femenino</option>
                       </select>
                      </div>
                      </div>

                  </div>
                  <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-success">Criar</button>
                  </div>
                </div>
            </div>
        </div>
    </form>
        <!-- Fim do Modal de Cadastro! -->

  <!-- Inicio da Informação ocultada -->
       <div class="modal fade" id="ExemploModalCentralizado" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="TituloModalCentralizado">Termos e condições</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">

             <h6><b>1.Realização</b></h6><br>
           <p style="text-align: justify;"><b>1.1</b> Para efetuar um pedido de cadastrar a sua conta na página é necessário que o(a) “ presado ” frequente o nosso instituto, faça parte do mesmo, e que preencha os formulários disponíveis online. Seguindo todos os passos para que a mesma seja finalizada com sucesso.<br><br> 
           <b>1.2</b> Depois de registado(a), receberá um e-mail automático a confirmar a inscrissão. Sugerimos que o imprima ou efetue o download desta cópia para referência futura. Caso os dados não estejam corretos poderá pedir de imediato a sua alteração, ou até, a anulação da compra efetuada.</p><br>

            <h6><b>2.Disponibilidade dos Serviços</b></h6>
            <p style="text-align: justify;"><b>2.1</b> O ISSP Kilamba apenas processa, o pedido efetuado por 
            um utilizador após confirmação do respetivo pagamento.<br><br>
            <b>2.2</b> A informação sobre a disponibilidade dos serviços refere-se ao momento em que o utilizador faz o pedido de cadastrar a sua farmácia a página. Só  após a confirmação do pagamento é que é feita a validação final de disponibilidade dos serviços. Aconselha-se
            por isso que o pagamento ocorra logo após a realização do pedido.</p>    
                </div>   
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Não Concordo</button>
                  <a  type="submit" href data-toggle="modal" data-target="#modalLoginForm" class="btn btn-primary">Sim Concordo</a>
                </div>
              </div>
            </div>
        </div>
                 <!-- Fim da Informação ocultada -->
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery-3.3.1.slim.min.js" ></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="jQuery/jquery.validate.js"></script>

 <div class="col-12 ">
                                <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp; text-align: center;">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="imagens/slide3.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="news_post.php?id=13" class="post-title">Mais de 75 partos deram entrada nas últimas 24 horas na Maternidade Lucrécia Paim.  </a>
                                    <!-- Post Meta -->
                                    <div class="post-meta">
                                        <span><i class="fa fa-calendar"></i> 2022-02-08</span>
                                    </div>
                                    <!-- Post Excerpt -->
                                    <p>Decorreu na última sexta-feira no Anfiteatro da Maternidade Lucrécia Paim, o II° encontro de ciêntistas...</p>
                                    <!-- Read More btn -->
                                    <a href="news_post.php?id=MTM%3D" class="btn academy-btn btn-sm mt-15">Ler mais <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
<br>

 <div class="col-12 ">
                                <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp; text-align: center;">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="imagens/slide2.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="news_post.php?id=12" class="post-title">Diagnósticos e formas de Protecção contra Covid-19</a>
                                    <!-- Post Meta -->
                                    <div class="post-meta">
                                        <span><i class="fa fa-calendar"></i> 2020-06-27</span>
                                    </div>
                                    <!-- Post Excerpt -->
                                    <p>1 - Diagnóstico

O diagnóstico da COVID-19 é realizado primeiramente pelo profissional de saúde que deve avaliar a presença de critérios clín...</p>
                                    <!-- Read More btn -->
                                    <a href="news_post.php?id=MTI%3D" class="btn academy-btn btn-sm mt-15">Ler mais <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
 <div class="col-12 ">
                                <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp; text-align: center;">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="imagens/hosp6.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="news_post.php?id=13" class="post-title">Visita de jovens estudantes de medicida da universidade Jean Piaget Angola.  </a>
                                    <!-- Post Meta -->
                                    <div class="post-meta">
                                        <span><i class="fa fa-calendar"></i> 2022-02-08</span>
                                    </div>
                                    <!-- Post Excerpt -->
                                    <p>Decorreu na última sexta-feira na Maternidade Lucrécia Paim, a visita de jovens estudantes prespetivando desafios na medicina moderna...</p>
                                    <!-- Read More btn -->
                                    <a href="news_post.php?id=MTM%3D" class="btn academy-btn btn-sm mt-15">Ler mais <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
<br>
    <footer class="footer-area" >
    <div class="main-footer-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget mb-100">
                        <div class="widget-title">
                            <a href="#"><img src="imagens/logotipo.JPG" alt=""  style="width: 85px;"></a>
                        </div>
                        <p style="color: white"> Actualmente a maternidade lucrécia paim conta com uma equipa vasta multidisciplinar de mais de 800 funcionarios...<a href="sobrenos.jsp" style="color: blue">Ler mais</a></p>
                                                </div>
                </div>
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget mb-100">
                        <div class="widget-title">
                            <h5 style="color: red">Links</h5>
                        </div>
                        <nav>
                            <ul class="useful-links">
                                <li><a href="home.php">Home</a></li>
                                <li><a href="course.php">Nossos Serviços</a></li>
                                <li><a href="gallery.php">Galeria</a></li>
                                <li><a href="uploads/boletins/efac_5d11286ad1b69cf5af762123bc6fc2ad.jpeg" target="_blank">Boletim Informativo</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                
                  <!-- Footer Widget Area -->
                 <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget mb-100">
                        <div class="widget-title">
                            <h5 style="color: red">Contacto</h5>
                        </div>
                                                <div class="single-contact d-flex mb-30">
                            <i class="icon-placeholder"></i>
                            <p style="color: white">Avenida Comandante Gika, Largo da Sagrada Família, Luanda, Angola</p>
                        </div>
                        <div class="single-contact d-flex mb-30">
                            <i class="icon-telephone-1"></i>
                            <p style="color: white">Contactos: +244 996 340 816 <br>Contactos: +244 922 202 260 </p>
                        </div>
                        <div class="single-contact d-flex">
                            <i class="icon-contract"></i>
                            <p style="color: white">utente@lucreciapaim.org</p>
                        </div>
                <!-- Footer Widget Area -->
               
              
               
                   </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright ©<script>document.write(new Date().getFullYear());</script>2023 Todos direitos reservado | site of <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://muimsoftware.com" target="_blank">Programação</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </div>
</footer>
                 
               

            <script src="js/jquery.min.js"></script>
            <script src="js/jquery-3.3.1.slim.min.js" ></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="jQuery/jquery.validate.js"></script>
    </body>
</html>
