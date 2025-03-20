import 'package:flutter/material.dart';

void main() => runApp(const MiContainer());

class MiContainer extends StatelessWidget {
  const MiContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de datos
    List<String> datos = ["Flutter", "Dart", "Widget", "Container", "Row"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("De Leon Container"),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          centerTitle: true,
          backgroundColor: const Color(0xffecdf2a),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centrar la Row
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                width: 200, // Ancho del container
                height: 210, // Altura del container
                decoration: BoxDecoration(
                  color: Color(0xffc8ffa8), // Color suave
                  borderRadius: BorderRadius.circular(15), // Bordes redondeados
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centrar verticalmente
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Centrar horizontalmente
                  children: datos
                      .map((dato) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              dato,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
