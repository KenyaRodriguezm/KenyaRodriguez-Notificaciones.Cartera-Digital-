import 'package:flutter/material.dart';
import 'notificaciones.dart';
import 'ConfiguracionUsuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Notificaciones.inicializar();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notificaciones',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificacionMenu(),
    );
  }
}

class NotificacionMenu extends StatelessWidget {
  final ConfiguracionUsuario configUsuario = ConfiguracionUsuario(
    tipoUsuario: 'Trabajador',
    mensajeLimiteAlcanzado: '¡Felicidades! Has alcanzado tu límite de ahorro.',
    mensajeAhorroLogrado: '¡Genial! Has logrado ahorrar este mes.',
    mensajeLimiteExcedido: '¡Cuidado! Has excedido tu límite de ahorro.',
    colorInterfaz: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú de Notificaciones')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LimiteAlcanzado(configUsuario: configUsuario),
                  ),
                );
              },
              child: Text('Notificación Límite Alcanzado'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AhorroLogrado(configUsuario: configUsuario),
                  ),
                );
              },
              child: Text('Notificación Ahorro Logrado'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LimiteExcedido(configUsuario: configUsuario),
                  ),
                );
              },
              child: Text('Notificación Límite Excedido'),
            ),
          ],
        ),
      ),
    );
  }
}

class LimiteAlcanzado extends StatelessWidget {
  final ConfiguracionUsuario configUsuario;

  LimiteAlcanzado({required this.configUsuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Límite Alcanzado')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Notificaciones.mostrarNotificacion(
              1,
              'Límite Alcanzado',
              configUsuario.mensajeLimiteAlcanzado,
              configUsuario.colorInterfaz,
            );
          },
          child: Text('Enviar Notificación Límite Alcanzado'),
        ),
      ),
    );
  }
}

class AhorroLogrado extends StatelessWidget {
  final ConfiguracionUsuario configUsuario;

  AhorroLogrado({required this.configUsuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ahorro Logrado')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Notificaciones.mostrarNotificacion(
              2,
              'Ahorro Logrado',
              configUsuario.mensajeAhorroLogrado,
              configUsuario.colorInterfaz,
            );
          },
          child: Text('Enviar Notificación Ahorro Logrado'),
        ),
      ),
    );
  }
}

class LimiteExcedido extends StatelessWidget {
  final ConfiguracionUsuario configUsuario;

  LimiteExcedido({required this.configUsuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Límite Excedido')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Notificaciones.mostrarNotificacion(
              3,
              'Límite Excedido',
              configUsuario.mensajeLimiteExcedido,
              configUsuario.colorInterfaz,
            );
          },
          child: Text('Enviar Notificación Límite Excedido'),
        ),
      ),
    );
  }
}
