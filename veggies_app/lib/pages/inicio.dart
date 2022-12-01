import 'package:flutter/material.dart';
//import 'package:ventanas/suma.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => inicioState();
}

class inicioState extends State<inicio> {
  String? nombre;
  String? apellidos;
  String? correo;
  String? usuario;
  String? contrasena;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Form(
            child: Column(children: [
              Transform.translate(
                offset: Offset(0, -100),
                child: Center(
                    child: SingleChildScrollView(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 150, bottom: 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.account_circle_rounded),
                              labelText: "Usuario",
                            ),
                            onSaved: (valor) {
                              usuario = valor;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.account_circle_rounded),
                                labelText: "Contraseña"),
                            obscureText: true,
                            onSaved: (valor) {
                              contrasena = valor;
                            },
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                              child: Text("Iniciar"),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  "/Home_body",
                                );
                              }),
                          SizedBox(height: 10),
                          ElevatedButton(
                            child: Text("Registrate"),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                "/recibe",
                              );
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
