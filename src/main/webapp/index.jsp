        <%@ page import="routes.routesServlet" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculadora de média</title>
</head>

<body style="background-color: #7c2020; color: #cccccc; font-family: 'Arial Black'; display: flex; justify-content: center; height: 100vh; align-items:center; margin: 0; padding: 0">
<div style="display: flex; flex-direction: column; align-items: center; background-color: #404040; padding: 20px; border-radius: 10px; max-width: 500px">
    <h1>Calculadora de média</h1>
    <form method="post" action="/calcula-media/calcula-nota">
        <input type="text" name="primeira-nota" style="border-radius: 5px; padding: 5px" placeholder="Primeira nota">
        <br><br>
        <input type="text" name="segunda-nota" style="border-radius: 5px; padding: 5px" placeholder="Segunda nota">
        <br><br>
        <button type="submit" style="display: block; margin: 0 auto; border-radius: 5px; padding: 4px;">Calcular</button>
    </form>

    <div style="margin-top: 20px">
        Média:
        <%
            double media = 0;
            if (request.getAttribute("media") != null) {
                media = (double) request.getAttribute("media");
            }
        %>

        <%=media%>
    </div>
</div>
</body>
</html>