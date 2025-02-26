import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('alexis Fabian Jimenez Jimenez'),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xffef6a6a),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Alexis Jimenez Mat:22308051281213',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              // Primera fila de iconos con subtítulos
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithLabel(icon: Icons.star, label: 'Destacados'),
                  IconWithLabel(icon: Icons.adb_sharp, label: 'Inicio'),
                  IconWithLabel(icon: Icons.settings, label: 'Ajustes'),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithLabel(icon: Icons.add_call, label: 'Destacados'),
                  IconWithLabel(icon: Icons.abc_sharp, label: 'Destacados'),
                  IconWithLabel(icon: Icons.account_box, label: 'Ajustes'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} //fin clase mis iconos

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconWithLabel({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: Color(0xff14a23e)),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
