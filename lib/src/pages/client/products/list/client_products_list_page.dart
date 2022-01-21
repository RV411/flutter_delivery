import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery/src/pages/client/products/list/client_products_list_controller.dart';

class ClientProductListPage extends StatefulWidget {
  const ClientProductListPage({Key key}) : super(key: key);

  @override
  _ClientProductListPageState createState() => _ClientProductListPageState();
}

class _ClientProductListPageState extends State<ClientProductListPage> {
  ClientProductsListController _con = new ClientProductsListController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _con.logout,
          child: Text('CERRAR SESION'),
        ),
      ),
    );
  }
}
