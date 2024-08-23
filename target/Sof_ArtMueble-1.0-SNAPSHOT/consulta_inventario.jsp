<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de Inventario</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #87CEEB; /* Azul celeste para el fondo */
            font-family: Arial, sans-serif;
        }

        .header-container {
            width: 100%;
            height: 130px;
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro para el encabezado */
            display: flex;
            align-items: center;
            padding: 0 20px;
            box-sizing: border-box;
            color: white;
            position: relative;
            margin-bottom: 40px; /* Espacio entre el encabezado y el contenedor de contenido */
        }

        .header-container img {
            height: 80px;
            margin-right: 20px;
        }

        .header-container h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            text-align: center; /* Centra el texto dentro del h1 */
            flex: 1; /* Permite que el h1 ocupe el espacio disponible y lo centre */
        }

        .content-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 50%;
            max-width: 800px;
            margin: 0 auto; /* Alinea el contenedor de contenido en el centro de la página */
        }

        form {
            width: 100%;
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        form label {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 16px;
        }

        form select,
        form button {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        form input[type="text"] {
            margin-bottom: 20px; /* Espacio inferior para separar del botón */
        }

        form button {
            background-color: rgba(15, 64, 245, 1); /* Azul */
            color: white;
            font-weight: bold;
            border: none;
            padding: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s;
            text-align: center;
        }

        form button:hover {
            background-color: #0056b3; /* Azul oscuro al pasar el mouse */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th,
        table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        table th {
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro */
            color: white;
        }

        /* Estilos para el botón verde de volver a inventario */
        .back-button {
            background-color: #28a745; /* Verde */
            color: white;
            font-weight: bold;
            border: none;
            padding: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #218838; /* Verde más oscuro al pasar el mouse */
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Consulta de Inventario</h1>
    </div>
    <div class="content-container">
        <form action="ConsultaInventarioServlet" method="GET">
            <label for="criterio">Buscar por:</label>
            <select id="criterio" name="criterio">
                <option value="nombre">Nombre</option>
                <option value="ubicacion">Categoria</option>
                <option value="cantidad">Cantidad</option>
            </select>
            <button type="submit">Buscar</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>Nombre del Artículo</th>
                    <th>Cantidad</th>
                    <th>Categoria</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="articulo" items="${resultados}">
                    <tr>
                        <td>${articulo.nombre}</td>
                        <td>${articulo.cantidad}</td>
                        <td>${articulo.categoria}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <!-- Botón para volver a inventario -->
        <a href="inventario.jsp" class="back-button">Volver a Inventario</a>
    </div>
</body>
</html>
