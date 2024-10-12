import package:flutter/material.dart;

public class dart {
  class ConfiguracionUsuario {
    String tipoUsuario;
    String mensajeLimiteAlcanzado;
    String mensajeAhorroLogrado;
    String mensajeLimiteExcedido;
    Color colorInterfaz;
  
    ConfiguracionUsuario({
      required this.tipoUsuario,
      required this.mensajeLimiteAlcanzado,
      required this.mensajeAhorroLogrado,
      required this.mensajeLimiteExcedido,
      required this.colorInterfaz,
    });
}
