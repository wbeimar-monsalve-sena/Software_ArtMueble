<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Clientes</title>
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
            padding: 15px; /* Reducido el padding */
            position: relative;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 80%; /* Ajustar el ancho del formulario */
            max-width: 600px;
            margin: 20px auto; /* Centrando el formulario */
        }

        form {
            width: 100%;
        }

        label {
            font-weight: bold;
            margin: 5px 0; /* Reducido el margen */
            display: block;
        }

        input[type="text"],
        input[type="email"] {
            padding: 8px; /* Reducido el padding */
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            margin-bottom: 10px; /* Reducido el margen entre campos */
        }

        button {
            background-color: rgb(47, 0, 255); /* Azul */
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px; /* Reducido el tamaño del botón */
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
            padding: 10px 20px; /* Tamaño del botón pequeño */
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: inline-block; /* Asegura que el botón no ocupe todo el ancho */
            text-align: center;
            margin-left: 20px; /* Espacio a la izquierda del botón */
        }

        .button-link-small:hover {
            background-color: #218838; /* Verde más oscuro en hover */
        }

        .button-container {
            display: flex;
            justify-content: center; /* Centrar horizontalmente */
            align-items: center;
            margin-top: 10px; /* Reducido el margen superior */
        }
    </style>
</head>
<body>
    <div id="container1">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Gestión de Clientes</h1>
    </div>

    <div class="form-container">
        <form action="BuscarClienteServlet" method="GET">
            <label for="idCliente">ID del Cliente:</label>
            <input type="text" id="idCliente" name="idCliente" required>
            <button type="submit">Buscar Cliente</button>
        </form>

        <!-- Aquí se podría incluir un formulario de actualización si se encuentra un cliente -->
        <%-- Ejemplo de formulario para actualización --%>
        <form action="ActualizarClienteServlet" method="POST">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre">
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email">
            
            <label for="telefono">Teléfono:</label>
            <input type="text" id="telefono" name="telefono">
            
            <label for="direccion">Dirección:</label>
            <input type="text" id="direccion" name="direccion">
            
            <button type="submit">Actualizar Cliente</button>
        </form>

        <div class="button-container">
            <a href="clientes.jsp" class="button-link-small">Volver a Clientes</a>
        </div>
    </div>
</body>
</html>

