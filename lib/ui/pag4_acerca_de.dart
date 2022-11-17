import 'package:flutter/material.dart';

class pag4_acerca_de extends StatefulWidget {
  const pag4_acerca_de({super.key});

  @override
  State<pag4_acerca_de> createState() => _pag4_acerca_deState();
}

class _pag4_acerca_deState extends State<pag4_acerca_de> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text("Marilyn Serrano Ospino"),
            subtitle: Text("email: marilyno@uninorte.edu.co"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text("Leidy Ozuna"),
            subtitle: Text("email: lvozuna@uninorte.edu.co"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text("Yenifer Olmos Herrera"),
            subtitle: Text("email: ylolmos@uninorte.edu.co"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text("Daniela Pachajoa Rodríguez"),
            subtitle: Text("email: pachajoad@uninorte.edu.co"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text("John Edier Marquez Sanchez"),
            subtitle: Text("email: johnem@uninorte.edu.co"),
          ),
        ],
      ),
    );
  }
}
