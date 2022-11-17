import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/controlador/controlador_general.dart';

class pag2_productos extends StatefulWidget {
  const pag2_productos({super.key});

  @override
  State<pag2_productos> createState() => _pag2_productosState();
}

class _pag2_productosState extends State<pag2_productos> {
  controlador_general control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: control.Productos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading:
                    Image(image: NetworkImage(control.Productos[index].imagen)),
                title: Text(control.Productos[index].nombre +
                    " | " +
                    control.Productos[index].precio.toString()),
                trailing: Text(control.Productos[index].cantidad.toString(),
                    style: TextStyle(fontSize: 25)),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nueva_cantidad =
                              control.Productos[index].cantidad + 1;
                          control.cambiar_cantidad(index, nueva_cantidad);
                          control.Productos.refresh();
                        },
                        icon: Icon(Icons.add)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nueva_cantidad =
                              control.Productos[index].cantidad - 1;
                          if (nueva_cantidad < 0) {
                            nueva_cantidad = 0;
                          }
                          control.cambiar_cantidad(index, nueva_cantidad);
                          control.Productos.refresh();
                        },
                        icon: Icon(Icons.remove)),
                  ],
                ),
              );
            },
          )),
    );
  }
}
