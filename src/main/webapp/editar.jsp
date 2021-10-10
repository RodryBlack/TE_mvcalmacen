<%@page import="com.emergentes.modelo.Almacen"%>
<%
    Almacen item=(Almacen) request.getAttribute("miAlmacen");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(item.getId()==0)? "Nuevo Registro":"Editar registro" %></h1>
        <form action="Controlador" method="post">
            <input type="hidden" name="id" value="<%=item.getId()%>">
            
            <label>Descripcion</label>
            <input type="text" name="descripcion" value="<%=item.getDescripcion()%>">
            <br>
            <label>Cantidad</label>
            <input type="number" name="cantidad" value="<%=item.getCantidad()%>">
            <br>
            <label>Precio</label>
            <input type="text" name="precio" value="<%=item.getPrecio()%>">
            <br>
            
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
