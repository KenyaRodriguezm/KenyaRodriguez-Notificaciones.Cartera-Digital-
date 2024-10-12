import 'package:flutter/material.dart'; // Import necesario para Color

class ConfiguracionUsuario {
  String tipoUsuario;
  String mensajeLimiteAlcanzado;
  String mensajeAhorroLogrado;
  String mensajeLimiteExcedido;
  Color colorInterfaz; // Asegúrate de que Color sea reconocido

  ConfiguracionUsuario({
    required this.tipoUsuario,
    required this.mensajeLimiteAlcanzado,
    required this.mensajeAhorroLogrado,
    required this.mensajeLimiteExcedido,
    required this.colorInterfaz,
  });
}
