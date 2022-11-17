import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/controlador/controlador_general.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controlador_general control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://e7.pngegg.com/pngimages/513/311/png-clipart-silhouette-male-silhouette-animals-head-thumbnail.png"),
                  ),
                  accountName: Text("John Edier Marquez Sanchez"),
                  accountEmail: Text("johnem@uninorte.edu.co")),
            ),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    control.cambiar_posicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined),
                  title: Text("Productos"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    control.cambiar_posicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart_checkout_outlined),
                  title: Text("Carrito"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    control.cambiar_posicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person_outline_outlined),
                  title: Text("Acerca de ..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    control.cambiar_posicion(3);
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
