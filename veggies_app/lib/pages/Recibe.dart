import 'inicio.dart';
import 'package:flutter/material.dart';

class recibe extends StatefulWidget {
  const recibe({super.key});

  @override
  State<recibe> createState() => _recibeState();
}

class _recibeState extends State<recibe> {
  String? nombre;
  String? apellidos;
  String? correo;
  String? usuario;
  String? contrasena;
  final _keyG = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //final ar = ModalRoute.of(context)!.settings.arguments as argumentos;
    return Scaffold(
        appBar: AppBar(
          title: Text("Pagina 2"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(0),
          child: Form(
            key: _keyG,
            child: Column(children: [
              Transform.translate(
                offset: Offset(0, 100),
                child: Center(
                    child: SingleChildScrollView(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 0, bottom: 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.account_circle_rounded),
                              labelText: "Nombre",
                            ),
                            onSaved: (valor) {
                              nombre = valor;
                            },
                            validator: (valor) {
                              if (valor == null || valor.isEmpty) {
                                return "No puede dejar este campo vacio";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.account_circle_rounded),
                              labelText: "Apellidos",
                            ),
                            onSaved: (valor) {
                              apellidos = valor;
                            },
                            validator: (valor) {
                              if (valor == null || valor.isEmpty) {
                                return "No puede dejar este campo vacio";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.account_circle_rounded),
                                labelText: "Usuario"),
                            onSaved: (valor) {
                              usuario = valor;
                            },
                            validator: (valor) {
                              if (valor == null || valor.isEmpty) {
                                return "No puede dejar este campo vacio";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.account_circle_rounded),
                                labelText: "Correo Electronico"),
                            onSaved: (valor) {
                              correo = valor;
                            },
                            validator: (valor) {
                              if (valor == null || valor.isEmpty) {
                                return "No puede dejar este campo vacio";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.account_circle_rounded),
                                labelText: "Contraseña"),
                            obscureText: true,
                            onSaved: (valor) {
                              contrasena = valor;
                            },
                            validator: (valor) {
                              if (valor == null || valor.isEmpty) {
                                return "No puede dejar este campo vacio";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            child: Text("Enviar"),
                            onPressed: () {
                              if (_keyG.currentState!.validate()) {
                                _keyG.currentState!.save();
                                Navigator.pushNamed(context, "/profile",
                                    arguments: argumentos(nombre, apellidos,
                                        correo, usuario, contrasena));
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ]),
          ),
        ));
  }
}

class argumentos {
  String? nombre;
  String? apellidos;
  String? correo;
  String? usuario;
  String? contrasena;
  argumentos(
      this.nombre, this.apellidos, this.correo, this.usuario, this.contrasena);
}
