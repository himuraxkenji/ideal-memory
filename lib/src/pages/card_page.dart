import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo de esta card'),
            subtitle: Text('Esta es una descripcion de una idea de la descripcion que se quiere mostrar'),
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/BfCwN4iy6T8/maxresdefault.jpg') ,
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.elsetge.cat/myimg/f/182-1828543_anime-scenery-anime-cityscape-landscape-scenery-5k-anime.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner')
            )
        ],
      ),
    );
  }
}