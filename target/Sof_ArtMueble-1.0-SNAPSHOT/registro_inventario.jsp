<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nuevo Artículo</title>
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
            justify-content: center;
            align-items: center;
            position: relative;
            box-sizing: border-box;
            color: white;
            padding: 0 20px;
            flex-direction: column;
        }

        .header-container img {
            height: 80px;
            margin-bottom: 10px;
        }

        .header-container h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
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
            max-width: 600px;
            margin: 20px auto;
            overflow: hidden; /* Evita el desbordamiento */
        }

        .form-container {
            width: 100%;
        }

        .form-container label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
            font-weight: bold; /* Texto en negrita */
        }

        input[type="text"],
        input[type="number"],
        textarea {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            margin-bottom: 10px;
            box-sizing: border-box; /* Incluye el padding en el ancho total */
        }

        textarea {
            resize: vertical; /* Permite redimensionar verticalmente */
            max-height: 100px; /* Limita la altura máxima del textarea */
        }

        .btn-registrar {
            background-color: rgba(15, 64, 245, 1); /* Azul */
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px; /* Tamaño ajustado del botón */
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            text-decoration: none;
            display: block;
            width: 100%;
            box-sizing: border-box;
        }

        .btn-registrar:hover {
            background-color: #0056b3; /* Azul oscuro al pasar el mouse */
        }

        .btn-login {
            background-color: #28a745; /* Verde */
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px; /* Tamaño ajustado del botón */
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: block;
            width: 50%;
            box-sizing: border-box;
            margin-top: 20px; /* Espacio superior para separar del formulario */
            text-align: center;
        }

        .btn-login:hover {
            background-color: #218838; /* Verde oscuro al pasar el mouse */
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Registrar Nuevo Artículo</h1>
    </div>
    <div class="content-container">
        <form action="RegistrarInventarioServlet" method="POST" class="form-container">
            <label for="nombre">Nombre del Artículo:</label>
            <input type="text" id="nombre" name="nombre" required>
            
            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" rows="3" required></textarea>

            <label for="cantidad">Cantidad:</label>
            <input type="number" id="cantidad" name="cantidad" required>

            <label for="ubicacion">Precio:</label>
            <input type="text" id="Precio" name="Precio" required>

            <button type="submit" class="btn-registrar">Registrar</button>
        </form>
        <a href="inventario.jsp" class="btn-login">Volver a Inventario</a>
    </div>
</body>
</html>
