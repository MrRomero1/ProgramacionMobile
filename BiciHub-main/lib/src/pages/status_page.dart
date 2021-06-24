import 'package:flutter/material.dart';

import 'package:bici_hub/src/widgets/logo.dart';
import 'package:bici_hub/src/service/alumno_service.dart';
import 'package:bici_hub/src/widgets/back_button_own.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Here you can see the status of your services',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: FutureBuilder(
                    initialData: [],
                    future: cargaData(),
                    builder: (context, snapshot) => _builder(context, snapshot),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('maps');
        },
      ),
    );
  }

  Widget _cards(List data, context) {
    List<Widget> content = [];

    data.forEach((element) {
      content
        ..add(
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            // color: Colors.white,
            child: ListTile(
              onTap: () {
                showDialog(
                  useSafeArea: true,
                  context: context,
                  barrierDismissible: true,
                  builder: (_) {
                    return AlertDialog(
                      title: Text('Mensaje'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              'Su solicitud completada, nos contactaremos con usted en los proximos dias, para la confirmación de sus datos y verificaion del local.'),
                          SizedBox(height: 40.0),
                          Logo(),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              title: Text(element['nombre']),
              subtitle:
                  Text(element['fechaNacimiento'].toString().substring(0, 10)),
              dense: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              leading: Icon(Icons.chat_bubble, color: Colors.blue),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..add(Divider());
    });
    return ListView(children: content);
  }

  Widget _builder(context, AsyncSnapshot snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.data.length != 0) {
        return _cards(snapshot.data, context);
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Colors.red),
            Text(' Error en la Conexión.', style: TextStyle(color: Colors.red)),
          ],
        );
      }
    } else {
      return Center(
        child: Container(
          width: 40.0,
          height: 40.0,
          child: CircularProgressIndicator(
            strokeWidth: 5.0,
          ),
        ),
      );
    }
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [BackButtonOwn(), Logo(), SizedBox()],
      ),
    );
  }
}
