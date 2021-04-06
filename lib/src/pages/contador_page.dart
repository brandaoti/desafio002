import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! AppBar
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Cubos Academy - Desafio 002'),
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'Contador',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '$_contador',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

      // * NavigatorBar

      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 2,
              offset: Offset(0, -2),
            ),
          ],
        ),
      ),
    );
  }
}
