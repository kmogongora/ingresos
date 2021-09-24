<%-- 
    Document   : juguetes_lista
    Created on : 3/09/2021, 10:34:17 p. m.
    Author     : Cielo Juliana
--%>

<%@page import="logica.Ingreso"%>
<%@page import="logica.ColeccionIngreso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Lista de Ingresos</title>
    </head>
    <body>
        <div class="container mt-5"> 
            <h3 class="mb-3">Lista de Ingreso</h3>
            <hr>
            <div class="row">
                <form class="col-sm-10">
                    <div class="row mb-3">
                        <label for="txt1" class="col-form-label col-sm-2">Filtrar por nombre</label>
                        <input type="text" class="col-form-control col-sm-9" id="txt1" name="txt1" value="">
                        <button type="button" class="btn btn-light col-sm-1"><i class="bi bi-search"></i></button>                    
                    </div>
                </form>
                <a href="R_ingresos.jsp" class="col-sm-2"><button type="submit" class="btn btn-primary" id="btnNuevo">Nuevo Ingreso</button></a>
            </div>
            <form>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Valor</th>
                         
                        </tr>
                    </thead>
                    <%
                        ColeccionIngreso coleccion = new ColeccionIngreso();
                        boolean hayDatos = coleccion.cargarTodosLosIngresos();
                    %>
                    <tbody>
                        <% if (hayDatos) { %>
                        <%  for (Ingreso j : coleccion.getLista()) {%>
                        <tr>
                            <td scope="row"><%= j.getId()%></td>
                            <td><%= j.getNombre()%></td>
                             <td><%= j.getValor()%></td>
                           
                            <td>
                                <button type="button" class="btn btn-success"><i class="bi bi-pencil-fill"></i></button>
                                <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                            </td>
                        </tr>
                        <% } %>
                        <% } else { %>
                        <tr>
                            <td colspan="5">No hay datos</td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
