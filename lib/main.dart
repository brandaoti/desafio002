import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contador = 0;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6200EE),
        accentColor: Color(0xFF03FAC6),
      ),

      // ? Home
      home: Scaffold(
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
            textBaseline: TextBaseline.alphabetic,
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
                '$contador',
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
      ),
    );
  }
}
