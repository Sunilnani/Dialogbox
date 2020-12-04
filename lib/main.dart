
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Text("Basic code Example:"),
                MyAlert(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(
          child: Text("show Alert"),
          onPressed: (){
            showAlertDialog(context);
          },
        )
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("ok"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("simple text"),
    content: Text("this is an alert message"),
    actions: [
      okButton,
    ],
  );
  showDialog(
      context: context,
      builder:(BuildContext context){
        return alert;
      }
  );
}
