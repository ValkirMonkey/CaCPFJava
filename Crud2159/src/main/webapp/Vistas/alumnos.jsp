<%-- 
    Document   : alumnos
    Created on : 8 dic. 2021, 13:29:38
    Author     : Valkir
--%>

<%@page import="modelo.Alumnos"%>
<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Alumnos</h1>
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-4 m-4" href="AlumnosController?accion=nuevo">Agregar Alumno</a>
                <table class="table table-primary">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            List<Alumnos> resultado=null;
                            AlumnosDAO alumno = new AlumnosDAO();
                            resultado = alumno.listarAlumnos();
                            
                                for(int i=0; i< resultado.size(); i++)
                                {
                                    String ruta ="AlumnosController?accion=modificar&id=" + resultado.get(i).getId();
                                    String rutae = "AlumnosController?accion=eliminar&id" + resultado.get(i).getId();
                        %>
                        <tr>
                            <td><%=resultado.get(i).getId()%></td>
                            <td><%=resultado.get(i).getNombre()%></td>
                            <td><%=resultado.get(i).getApellido()%></td>
                            <td><%=resultado.get(i).getEmail()%></td>
                            <td><a class="text-success" href=<%=ruta%>>X</a></td>
                            <td><a class="text-danger" href=<%=rutae%>>X</td>
                        </tr>
                                
                    </tbody>
                        <%  
                                }
                        %>    
                </table>
            </div>
        </div>
    </body>
</html>
