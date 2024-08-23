<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Actualizar Información</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007BFF; /* Fondo verde */
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            background-color: #0056b3;
            color: #000;
            padding: 30px; /* Ajuste de padding */
            border-radius: 10px;
            width: 350px; /* Ancho ajustado */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
        }
        h1 {
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px; /* Tamaño de fuente */
            margin: 20px 0; /* Margen ajustado */
        }
        img.logo {
            margin-right: 10px;
            height: 60px; /* Tamaño de la imagen */
            width: auto; /* Mantiene la proporción de la imagen */
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 8px; /* Margen entre etiquetas */
            font-weight: bold;
            font-size: 14px; /* Tamaño de fuente */
            align-self: flex-start; /* Alineación a la izquierda */
            width: 100%; /* Ancho del label */
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            margin-bottom: 12px; /* Margen entre campos */
            padding: 10px; /* Ajuste del padding */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px; /* Tamaño de fuente */
            width: calc(100% - 22px); /* Ancho del input igual al label (ajustado para el borde) */
        }
        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px; /* Padding del botón */
            border-radius: 5px;
            font-size: 14px; /* Tamaño de fuente */
            font-weight: bold; /* Texto en negrita */
            cursor: pointer;
            width: 100%; /* Ancho del botón */
            margin-bottom: 10px; /* Margen inferior para el botón de registrar */
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .inicio-sesion-btn {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px; /* Padding del botón */
            border-radius: 5px;
            font-size: 14px; /* Tamaño de fuente */
            font-weight: bold; /* Texto en negrita */
            cursor: pointer;
             width: calc(100% - 22px); /* Ancho del botón */
            text-decoration: none; /* Sin subrayado en el texto */
            display: inline-block;
        }
        .inicio-sesion-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>
            <img src="imagenes/logo-Art.jpg" alt="Logo" class="logo"> Actualizar Información
        </h1>
        <form action="ServletActualizarInformacion" method="post">
            <label for="nombreUsuario">Nombre de Usuario:</label>
            <input type="text" id="nombreUsuario" name="nombreUsuario" required>
            
            <label for="nuevoCorreo">Nuevo Nombre de Usuario:</label>
            <input type="email" id="nuevoCorreo" name="nuevoCorreo" required>
            
            <label for="nuevaContrasena">Nueva Contraseña:</label>
            <input type="password" id="nuevaContrasena" name="nuevaContrasena" required>
            
            <input type="submit" value="Actualizar">
        </form>
        
        <a href="inicio-sesion.jsp" class="inicio-sesion-btn">Inicio de sesión</a> <!-- Botón de inicio de sesión -->
        
    </div>
</body>
</html>



