
<%@page import="logica.ColeccionIngreso"%>
<%@page import="logica.Ingreso"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <%
            String id = request.getParameter("txtId");
            String nombre = request.getParameter("txtNombre");
            double valor = Double.parseDouble(request.getParameter("valorIngreso"));
            
                        String accion = request.getParameter("btnSubmit");

            if (accion.equals("nuevo")) {
                Ingreso j = new Ingreso(nombre, valor);
                ColeccionIngreso coleccion = new ColeccionIngreso();
                boolean guardado = coleccion.guardarIngreso(j);
                if (guardado == true) {
                    out.println("Ingreso guardado exitosamente");
                } else {
                    out.println("Información del Ingreso no se guardó.");
                }
            }
        %>
        <a href="ingresos_lista.jsp"><button type="submit" class="btn btn-primary" id="btnSubmit">Volver a la lista</button></a>
    </body>
</html>

