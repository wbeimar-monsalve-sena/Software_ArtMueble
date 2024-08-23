package com.mycompany.sof_artmueble.servlets;

import com.mycompany.sof_artmueble.utils.ConexionDB;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class ServletRecuperarContrasena extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("correo");

        // Generar un código de recuperación temporal
        String codigoRecuperacion = generateRecoveryCode();

        try (Connection conn = ConexionDB.getConnection()) {
            // Asegúrate de tener una tabla para almacenar los códigos de recuperación
            String query = "INSERT INTO RecuperacionContrasena (correo, codigo) VALUES (?, ?)";
            try (PreparedStatement ps = conn.prepareStatement(query)) {
                ps.setString(1, correo);
                ps.setString(2, codigoRecuperacion);
                
                int rowsAffected = ps.executeUpdate();
                
                if (rowsAffected > 0) {
                    // Aquí deberías implementar la lógica para enviar un correo al usuario con el código de recuperación
                    // enviarCorreo(correo, codigoRecuperacion);

                    response.sendRedirect("recuperar-contrasena.jsp?success=true");
                } else {
                    response.sendRedirect("recuperar-contrasena.jsp?error=true");
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Error en la conexión a la base de datos", e);
        }
    }

    private String generateRecoveryCode() {
        // Método simple para generar un código de recuperación aleatorio
        int length = 6;
        Random random = new Random();
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int digit = random.nextInt(10);
            code.append(digit);
        }
        return code.toString();
    }

    // Método para enviar un correo de recuperación
    // private void enviarCorreo(String correo, String codigoRecuperacion) {
    //     // Implementar el envío de correo usando JavaMail API u otra librería
    // }
}

