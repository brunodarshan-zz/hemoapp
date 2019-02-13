import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HemoApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text('HemoApp', 
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          ),
                        ),
            )
          ),
          ScopeBox(label: 'Doadores',),
          ScopeBox(label: 'Pacientes', isWhite: false,),
          ScopeBox(label: 'Hospitais', isWhite: true,),
          ScopeBox(label: 'Campanhas', isWhite: false,)
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ScopeBox extends StatelessWidget {
  final bool isWhite;
  final String label;

  const ScopeBox({Key key, this.isWhite = true, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: isWhite ? Colors.white : Colors.white70,
       height: 130.0,
       width: MediaQuery.of(context).size.width,
       child: Padding(
         padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
         child: ListTile(
           leading: Icon(Icons.healing, size: 30.0,),
           title: Text(label,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0
                      ),
                  ),
         ),
       ),
    );
  }

}