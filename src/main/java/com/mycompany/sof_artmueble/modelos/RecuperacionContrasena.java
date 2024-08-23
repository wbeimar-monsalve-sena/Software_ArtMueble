package com.mycompany.sof_artmueble.modelos;

public class RecuperacionContrasena {
    private String correo;
    private String codigo;

    // Constructor
    public RecuperacionContrasena(String correo, String codigo) {
        this.correo = correo;
        this.codigo = codigo;
    }

    // Getters y Setters
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
}

