<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consulta de Clientes</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #87CEEB; /* Azul celeste para el fondo */
            font-family: Arial, sans-serif;
        }

        #container1 {
            width: 100%;
            height: 110px;
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro para el contenedor superior */
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            box-sizing: border-box;
        }

        #container1 h1 {
            color: aliceblue;
            font-weight: bold;
            margin: 0 10px;
        }

        #container1 img {
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
            width: 90%; /* Aumento del ancho del formulario */
            max-width: 800px; /* Tamaño máximo del formulario */
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

        input[type="text"],
        input[type="email"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            margin-bottom: 10px;
        }

        button {
            background-color: rgb(47, 0, 255); /* Azul */
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
            background-color: #03fa03; /* Verde claro en hover */
        }

        .button-link-small {
            background-color: #28a745; /* Verde */
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
            margin-left: 20px; /* Espacio a la izquierda del botón */
        }

        .button-link-small:hover {
            background-color: #218838; /* Verde más oscuro en hover */
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
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
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro para el encabezado de la tabla */
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
    <div id="container1">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Consulta de Clientes</h1>
    </div>

    <div class="form-container">
        <form action="ConsultaClienteServlet" method="GET">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre">
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email">
            
            <button type="submit">Buscar</button>
        </form>

        <!-- Aquí se mostrarían los resultados de la búsqueda -->
        <%-- Ejemplo de tabla para mostrar resultados --%>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                </tr>
            </thead>
            <tbody>
                <!-- Aquí se incluirían filas con los resultados de la búsqueda -->
            </tbody>
        </table>

        <div class="button-container">
            <a href="clientes.jsp" class="button-link-small">Volver a Clientes</a>
        </div>
    </div>
</body>
</html>

