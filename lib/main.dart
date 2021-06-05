import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';
void main(){runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home:
    Scaffold(body:Home())
    ,);
  }
}
