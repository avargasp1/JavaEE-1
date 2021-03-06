<%@page import="accesodato.Coneccion"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Starter Template for Bootstrap</title>
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <br><br><br>
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Listar Ciudades</h3>
                    </div>
                    <div class="panel-body">
                         <a href="crear.jsp" class="btn btn-primary">NUEVO CIUDAD</a>
                        <br><br>
                        <table class="table table-condensed table-hover table-bordered">
                            <thead>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>Acciones</th>
                            </thead>
                            <tbody>
                                <%
                                   Coneccion con=new Coneccion();
                                   con.setConsulta("select * from Ciudades");
                                   while(con.getResultado().next()){
                                    out.println("<tr>");
                                       out.println("<td>"+con.getResultado().getString("ciudad_id")+"</td>");
                                       out.println("<td>"+con.getResultado().getString("nombre")+"</td>");
                                    out.println("</tr>");
                                   }
                                %>
                            </tbody>
                            
                        </table>
                    </div>
                </div>
            </div>
        </div><!-- /.container -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>
