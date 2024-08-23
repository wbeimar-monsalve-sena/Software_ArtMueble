<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Inventario</title>
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
            flex-direction: column;
            overflow: hidden;
            margin-bottom: 80px; /* Espacio entre el encabezado y el contenedor de contenido */
        }

        .header-container img {
            height: 80px;
            position: absolute;
            left: 20px;
            top: 20px;
        }

        .header-container h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            margin-left: 100px; /* Espacio para el logo */
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
            margin: 20px auto;
            overflow: hidden;
        }

        .table-inventario {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .table-inventario th, .table-inventario td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .table-inventario th {
            background-color: rgba(15, 64, 245, 1); /* Azul oscuro */
            color: white;
        }

        .form-inline input[type="number"] {
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-right: 10px;
            width: 80px;
        }

        .btn-actualizar {
            background-color: rgba(15, 64, 245, 1); /* Azul */
            color: white;
            font-weight: bold;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .btn-actualizar:hover {
            background-color: #0056b3; /* Azul oscuro al pasar el mouse */
        }

        .alert-container {
            width: 100%;
            background-color: #f8d7da; /* Color de alerta */
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            padding: 10px;
            box-sizing: border-box;
        }

        .alert-container h3 {
            margin: 0 0 10px;
            color: #721c24; /* Color del texto de alerta */
        }

        .alert-container ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .alert-container li {
            padding: 5px 0;
        }

        .btn-login {
            background-color: #28a745; /* Verde */
            color: white;
            font-weight: bold;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
            display: block;
            width: 50%;
            box-sizing: border-box;
            margin-top: 20px; /* Espacio superior para separar del contenido */
            text-align: center;
        }

        .btn-login:hover {
            background-color: #218838; /* Verde oscuro al pasar el mouse */
        }

        .btn-show-inventory {
            background-color: #007bff; /* Azul */
            color: white;
            font-weight: bold;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
            display: block;
            width: 50%;
            box-sizing: border-box;
            margin-bottom: 20px; /* Espacio inferior para separar del contenido */
            text-align: center;
        }

        .btn-show-inventory:hover {
            background-color: #0056b3; /* Azul oscuro al pasar el mouse */
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="imagenes/logo-Art.jpg" alt="Logo ArtMueble"/>
        <h1>Gestión de Inventario</h1>
    </div>
    <div class="content-container">
        <!-- Botón para mostrar inventario -->
        <a href="MostrarInventarioServlet" class="btn-show-inventory">Mostrar Inventario</a>
        
        <table class="table-inventario">
            <thead>
                <tr>
                    <th>Nombre del Artículo</th>
                    <th>Cantidad Actual</th>
                    <th>Categoria</th>
                    <th>Nueva Cantidad</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="articulo" items="${articulos}">
                    <tr>
                        <td>${articulo.nombre}</td>
                        <td>${articulo.cantidad}</td>
                        <td>${articulo.categoria}</td>
                        <td>
                            <form action="ActualizarInventarioServlet" method="POST" class="form-inline">
                                <input type="hidden" name="id" value="${articulo.id}">
                                <input type="number" name="nuevaCantidad" value="${articulo.cantidad}" min="0">
                                <button type="submit" class="btn-actualizar">Actualizar</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="alert-container">
            <h3>Alertas de Bajo Inventario</h3>
            <ul>
                <c:forEach var="alerta" items="${alertas}">
                    <li>${alerta.nombre} - Cantidad: ${alerta.cantidad}</li>
                </c:forEach>
            </ul>
        </div>
        <a href="inventario.jsp" class="btn-login">Volver a Inventario</a>
    </div>
</body>
</html>
