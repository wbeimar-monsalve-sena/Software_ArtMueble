package com.mycompany.sof_artmueble.servlets;

import com.mycompany.sof_artmueble.utils.ConexionDB;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ServletActualizarInformacion extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombreUsuario");
        String nuevoCorreo = request.getParameter("nuevoCorreo");
        String nuevaContrasena = request.getParameter("nuevaContrasena");

        try (Connection conn = ConexionDB.getConnection()) {
            String query = "UPDATE Usuarios SET correo = ?, contrasena = ? WHERE nombre_usuario = ?";
            try (PreparedStatement ps = conn.prepareStatement(query)) {
                ps.setString(1, nuevoCorreo);
                ps.setString(2, nuevaContrasena);
                ps.setString(3, nombreUsuario);
                
                int rowsAffected = ps.executeUpdate();
                
                if (rowsAffected > 0) {
                    response.sendRedirect("actualizar-informacion.jsp?success=true");
                } else {
                    response.sendRedirect("actualizar-informacion.jsp?error=true");
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Error en la conexión a la base de datos", e);
        }
    }
}
