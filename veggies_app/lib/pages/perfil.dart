import 'package:flutter/material.dart';
import 'Recibe.dart';
import 'inicio.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => profileState();
}

class profileState extends State<profile> {
  final _keyG = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ar = ModalRoute.of(context)!.settings.arguments as argumentos;
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: _keyG,
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
                        left: 5, right: 5, top: 100, bottom: 100),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(children: [
                              const Icon(
                                Icons.person,
                                size: 70,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "${ar.nombre}",
                                style: TextStyle(fontSize: 13.0),
                              ),
                              Text(
                                "${ar.apellidos}",
                                style: TextStyle(fontSize: 13.0),
                              ),
                            ]),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                                width: 500,
                                height: 50,
                                child: Text("Usuario: ${ar.usuario}",
                                    style: TextStyle(fontSize: 20.0))),
                            SizedBox(
                                width: 500,
                                height: 50,
                                child: Text("Correo: ${ar.correo}",
                                    style: TextStyle(fontSize: 15.0))),
                            Row(children: [
                              const Icon(
                                Icons.settings,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ajustes",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                            Row(children: [
                              const Icon(
                                Icons.headset_mic_outlined,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Soporte",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                            Row(children: [
                              const Icon(
                                Icons.receipt,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Privacidad",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                            Row(children: [
                              const Icon(
                                Icons.logout_outlined,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Cerrar Sesión",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
