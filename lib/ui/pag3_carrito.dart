import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2/controlador/controlador_general.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pag3_carrito extends StatefulWidget {
  const pag3_carrito({super.key});

  @override
  State<pag3_carrito> createState() => _pag3_carritoState();
}

class _pag3_carritoState extends State<pag3_carrito> {
  controlador_general control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: control.Productos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return control.Productos[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(
                                    control.Productos[index].imagen)),
                            title: Text(control.Productos[index].nombre),
                            subtitle: Text("Precio: " +
                                control.Productos[index].precio.toString() +
                                " | " +
                                "Cantidad: " +
                                control.Productos[index].cantidad.toString()),
                            trailing: Text(
                                (control.Productos[index].cantidad *
                                        control.Productos[index].precio)
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar: " + control.calcular_total().toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: (() {
                      Alert(
                          context: context,
                          title: "Compra realizada correctamente!!!!",
                          desc: "Que la disfrutes!!!!! y vuelve Pronto",
                          buttons: [
                            DialogButton(
                                child: Text("Cerrar"),
                                onPressed: (() {
                                  control.limpiar_todo();
                                  Navigator.pop(context);
                                  control.cambiar_posicion(0);
                                }))
                          ]).show();
                    }),
                    icon: Icon(Icons.shopping_cart_checkout_outlined),
                    label: Text("Comprar")),
              )
            ],
          ),
        ));
  }
}
