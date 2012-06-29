<jsp:include page="includes/header.jsp" />
<%@page import="bean.User"%>
<%
    User user = (User)session.getAttribute("user");
    String username = user.getUsername();
    String password = user.getPassword();
    
    String type = (String)session.getAttribute("type");    
%>

        <h1 align="center">Bienvenido usuario: <%=username + "/" + password %></h1>
        <h2 align="center">Usuario de tipo: <%= type %></h2>
        <br />
        
        <form id="form" name="form" method="GET" action="ventasHoy.jsp">
        <fieldset>
            <legend>Ventas del d�a</legend>
        <input type="submit" value="Consultar ventas del d�a" />
        </fieldset>
        </form>
        
        <form id="form" name="form" method="GET" action="reporteReabastecer2.jsp">
        <fieldset>
        <legend>Productos que necesitan ser reabastecidos</legend>
        <input type="submit" value="Generar Reporte" />
        </fieldset>
        </form>
        
        <form id="form" name="form" method="GET" action="reporteCancelados.jsp">
        <fieldset>
        <legend>Reporte de recibos de venta cancelados</legend>
        <input type="submit" value="Generar Reporte" />
        </fieldset>
        </form>
        
        <form id="form" name="form" method="GET" action="reporteTendencia.jsp">
        <fieldset>
        <legend>Reporte de tendencia de venta</legend>
        Art�culo: <input type="text" name="item" /> <br />
        Su venta desde: <input type="text" name="desde" /> <br />
        Hasta: <input type="text" name="hasta" /> <br />
        <input type="submit" value="Generar Reporte" />
        </fieldset>
        </form>
        
        <form id="form" name="form" method="GET" action="reporteDevueltos.jsp">
        <fieldset>
            <legend>Devoluciones del d�a</legend>
        <input type="submit" value="Generar reporte" />
        </fieldset>
        </form>
        
        <jsp:include page="includes/footer.html" />
