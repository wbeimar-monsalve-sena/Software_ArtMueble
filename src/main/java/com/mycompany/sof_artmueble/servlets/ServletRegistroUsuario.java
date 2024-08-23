package com.mycompany.sof_artmueble.servlets;

import com.mycompany.sof_artmueble.utils.ConexionDB;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ServletRegistroUsuario extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String nombreUsuario = request.getParameter("nombreUsuario");
        String contrasena = request.getParameter("contrasena");
        String correo = request.getParameter("correo");

        try (Connection conn = ConexionDB.getConnection()) {
            String query = "INSERT INTO Usuarios (nombre, apellido, nombre_usuario, contrasena, correo) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement ps = conn.prepareStatement(query)) {
                ps.setString(1, nombre);
                ps.setString(2, apellido);
                ps.setString(3, nombreUsuario);
                ps.setString(4, contrasena);
                ps.setString(5, correo);
                
                int rowsAffected = ps.executeUpdate();
                
                if (rowsAffected > 0) {
                    response.sendRedirect("registro-usuario.jsp?success=true");
                } else {
                    response.sendRedirect("registro-usuario.jsp?error=true");
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Error en la conexión a la base de datos", e);
        }
    }
}
