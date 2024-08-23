<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Actualización de Productos</title>
    <style>
        /* Usa estilos coherentes con el resto del proyecto */
        body {
            margin: 0;
            padding: 0;
            background-color: #87CEEB; /* Azul celeste para el fondo */
            font-family: Arial, sans-serif;
        }
        #header-container {
            width: 100%;
            height: 110px;
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro para el contenedor superior */
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            box-sizing: border-box;
        }
        #header-container h1 {
            color: aliceblue;
            font-weight: bold;
            margin: 0 10px;
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
            width: 80%;
            max-width: 600px;
            margin: 40px auto; /* Espacio entre el contenedor del formulario y el contenedor del header */
            box-sizing: border-box; /* Asegura que padding y border se incluyan en el width y height */
        }
        form {
            width: 100%;
        }
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        label {
            font-weight: bold;
            margin-right: 10px; /* Espacio entre el label y el botón */
            flex-shrink: 0; /* Evita que el label se reduzca */
            font-size: 14px; /* Tamaño de fuente reducido */
        }
        input[type="text"],
        input[type="number"],
        textarea {
            padding: 8px; /* Padding reducido */
            border-radius: 5px;
            border: 1px solid #ccc;
            width: calc(100% - 16px); /* Ajusta el ancho para el padding y el borde */
            margin-left: 10px; /* Espacio entre el input y el botón */
            box-sizing: border-box; /* Asegura que padding y border se incluyan en el width */
        }
        textarea {
            height: auto; /* Ajuste automático de altura */
        }
        button {
            background-color: rgb(47, 0, 255);
            color: white;
            font-weight: bold;
            border: none;
            padding: 8px 16px; /* Padding reducido */
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px; /* Tamaño de fuente reducido */
            transition: background-color 0.3s;
            width: 100%;
            box-sizing: border-box;
        }
        button:hover {
            background-color: #03fa03;
        }
        .button-link-small {
            background-color: #28a745; /* Color verde específico */
            color: white;
            font-weight: bold;
            border: none;
            padding: 8px 16px; /* Padding reducido */
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px; /* Tamaño de fuente reducido */
            text-decoration: none;
            display: inline-block;
            text-align: center;
            margin-top: 20px;
        }
        .button-link-small:hover {
            background-color: #218838; /* Color verde oscuro al pasar el ratón */
        }
        .search-button {
            background-color: #007bff; /* Color azul para el botón de búsqueda */
            color: white;
            font-weight: bold;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin-left: 10px; /* Espacio entre el input y el botón */
            transition: background-color 0.3s;
        }
        .search-button:hover {
            background-color: #0056b3; /* Azul más oscuro al pasar el ratón */
        }
    </style>
</head>
<body>
    <div id="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Actualización de Productos</h1>
    </div>
    <div class="form-container">
        <form action="ActualizarProductoServlet" method="POST">
            <div class="form-row">
                <label for="id">ID del Producto:</label>
                <input type="text" id="id" name="id" required>
                <button type="button" class="search-button">Buscar</button> <!-- Botón de búsqueda -->
            </div>
            
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre">
            
            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" rows="3"></textarea>
            
            <label for="precio">Precio:</label>
            <input type="number" id="precio" name="precio" step="0.01">
            
            <label for="categoria">Categoría:</label>
            <input type="text" id="categoria" name="categoria">
            
            <button type="submit">Actualizar Producto</button>
        </form>
        <a href="productos.jsp" class="button-link-small">Volver a Productos</a>
    </div>
</body>
</html>


