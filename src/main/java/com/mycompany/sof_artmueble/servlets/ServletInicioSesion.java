
package com.mycompany.sof_artmueble.servlets;

import com.mycompany.sof_artmueble.utils.ConexionDB;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ServletInicioSesion extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombreUsuario");
        String contrasena = request.getParameter("contrasena");
        
        // Validación básica para evitar inyecciones SQL u otros problemas
        if (nombreUsuario == null || contrasena == null || nombreUsuario.isEmpty() || contrasena.isEmpty()) {
            response.sendRedirect("inicio-sesion.jsp?error=true");
            return;
        }
        
        try (Connection conn = ConexionDB.getConnection()) {
            String query = "SELECT * FROM Usuarios WHERE nombre_usuario = ? AND contrasena = ?";
            try (PreparedStatement ps = conn.prepareStatement(query)) {
                ps.setString(1, nombreUsuario);
                ps.setString(2, contrasena);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        // Redirige a la página con éxito
                        response.sendRedirect("inicio-sesion.jsp?success=true");
                    } else {
                        // Redirige a la página con error
                        response.sendRedirect("inicio-sesion.jsp?error=true");
                    }
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Error en la conexión a la base de datos", e);
        }
    }
}

