import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.add_location),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          onPressed: () => _mostrarAlert(context),
          textColor: Colors.white,
          shape: StadiumBorder(),
        )
        ,),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context:context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Titulo de alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido de la caja de alerta'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('ok'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      }
    );
  }
}