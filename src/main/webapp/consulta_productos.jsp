<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consulta de Productos</title>
    <style>
        body {
            background-color: #87CEEB; /* Azul celeste para el fondo */
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        #header-container {
            width: 100%;
            height: 110px;
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro para el contenedor superior */
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            box-sizing: border-box;
            margin-bottom: 80px; /* Aumentado el espacio entre el header y el contenedor del formulario */
        }
        #header-container h1 {
            color: aliceblue;
            font-weight: bold;
            margin: 0;
        }
        #header-container img {
            height: 90%;
            position: absolute;
            right: 20px;
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
            width: 90%; /* Aumentado el ancho del contenedor del formulario */
            max-width: 800px; /* Aumentado el ancho máximo del contenedor del formulario */
            margin: 0 auto; /* Eliminado margen superior para centrado vertical */
            box-sizing: border-box; /* Asegura que padding y border se incluyan en el width */
        }
        form {
            width: 100%;
        }
        label {
            font-weight: bold;
            margin: 5px 0;
            display: block;
        }
        input[type="text"] {
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
            background-color: #28a745; /* Verde para el botón */
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: rgba(15, 64, 245, 1);
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div id="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Consulta de Productos</h1>
    </div>
    <div class="form-container">
        <form action="ConsultaProductoServlet" method="GET">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre">
            
            <label for="categoria">Categoría:</label>
            <input type="text" id="categoria" name="categoria">
            
            <button type="submit">Buscar</button>
        </form>

        <!-- Aquí se mostrarían los resultados de la búsqueda -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Categoría</th>
                </tr>
            </thead>
            <tbody>
                <!-- Aquí se incluirían filas con los resultados de la búsqueda -->
            </tbody>
        </table>
        <a href="productos.jsp" class="button-link-small">Volver a Productos</a>
    </div>
</body>
</html>

