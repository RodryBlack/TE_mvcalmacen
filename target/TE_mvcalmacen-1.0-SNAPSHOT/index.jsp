<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Almacen"%>
<%
    ArrayList<Almacen> lista=(ArrayList<Almacen>) session.getAttribute("listaAl");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Almacen</h1>
        
        <a href="Controlador?op=nuevo">Nuevo Articulo</a>
        
        <table border ="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista!=null){
                    for(Almacen puntero:lista){
                        
                 
            %>
            <tr>
                <td><%=puntero.getId()%></td>
                <td><%=puntero.getDescripcion()%></td>
                <td><%=puntero.getCantidad()%></td>
                <td><%=puntero.getPrecio()%></td>
                <td><a href="Controlador?op=editar&id=<%=puntero.getId()%>">Editar</a></td>
                <td><a href="Controlador?op=eliminar&id=<%=puntero.getId()%>"
                       onclick="return confirm('Esta seguro que desea eliminar');">Eliminar</a></td>
                
            </tr>
            <%
                   }
                }
            %>
        </table>
    </body>
</html>
