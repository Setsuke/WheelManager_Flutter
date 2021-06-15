import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/search/search_delegate.dart';

class SearchBusiness extends StatelessWidget {
  const SearchBusiness({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Buscar Empresa'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
