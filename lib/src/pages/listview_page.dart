import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  
  List<int> _listaNumeros = [1 ,2 , 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }


  Widget _crearLista(){
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        final image = _listaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://i.picsum.photos/id/$image/500/300.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}