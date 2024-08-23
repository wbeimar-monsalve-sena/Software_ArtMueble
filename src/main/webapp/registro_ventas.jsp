<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.NamingException"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Ventas</title>
    <style>
        body {
            background-color: #87CEEB; /* Color azul claro para el fondo del body */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgb(47, 0, 255); /* Color azul para el header */
            padding: 20px;
            color: white;
        }
        .header-container img {
            max-width: 150px;
            margin-bottom: 10px;
        }
        .header-container h1 {
            margin: 0;
            font-size: 24px;
        }
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            position: relative;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 600px;
            margin: 20px auto;
        }
        form {
            width: 100%;
        }
        label {
            font-weight: bold;
            margin: 5px 0;
            display: block;
        }
        input[type="text"], select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            margin-bottom: 10px;
        }
        button {
            background-color: rgb(47, 0, 255);
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
            box-sizing: border-box;
        }
        button:hover {
            background-color: #03fa03;
        }
        .button-link-small {
            background-color: #28a745; /* Verde para el botón de inicio de sesión */
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            margin-top: 20px;
        }
        .button-link-small:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Registro de Ventas</h1>
    </div>
    <div class="form-container">
        <form action="RegistrarVentaServlet" method="POST">
            <label for="producto">Producto:</label>
            <select id="producto" name="producto" required>
                <% 
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        InitialContext ctx = new InitialContext();
                        DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/tuDataSource");
                        conn = ds.getConnection();
                        stmt = conn.createStatement();
                        String query = "SELECT id, nombre FROM productos";
                        rs = stmt.executeQuery(query);
                        while (rs.next()) {
                            String id = rs.getString("id");
                            String nombre = rs.getString("nombre");
                %>
                <option value="<%= id %>"><%= nombre %></option>
                <% 
                        }
                    } catch (SQLException | NamingException e) {
                        e.printStackTrace();
                    } finally {
                        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                        try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                        try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                    }
                %>
            </select>

            <label for="cantidad">Cantidad:</label>
            <input type="text" id="cantidad" name="cantidad" required>
            
            <label for="precio">Precio:</label>
            <input type="text" id="precio" name="precio" required>
            
            <label for="metodo-pago">Método de Pago:</label>
            <select id="metodo-pago" name="metodo-pago" required>
                <option value="efectivo">Efectivo</option>
                <option value="tarjeta">Tarjeta de Crédito/Débito</option>
                <option value="transferencia">Transferencia Bancaria</option>
                <option value="cheque">Cheque</option>
                <!-- Puedes añadir más métodos de pago si es necesario -->
            </select>
            
            <button type="submit">Registrar Venta</button>
        </form>
        <a href="artmueble.jsp" class="button-link-small">ArtMueble</a>
    </div>
</body>
</html>
