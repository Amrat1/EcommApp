
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'app.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar:AppBar(title:Center(
      child: Text('Ecom App UI',style: TextStyle(color: Colors.black,fontSize: 25.0,
      ),
      ), ),
       backgroundColor: Colors.white,
    ),


      body:
    Column(
          children: [
            TextField(decoration: InputDecoration(
            hintText: ' Username',
            suffixIcon: Icon(Icons.search)),
            style: TextStyle(fontSize: 20),),


              Padding(
              padding: const EdgeInsets.all(2.0),
              child:Row(
                children: [
                  Text('  History',style: TextStyle(fontSize: 17),),
                ],
              ),
            ),

          screen(),
          screen(),
          screen(),
          screen(),
          screen(),
            screen(),
            ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));
            }, child: Text('Next')),
            ],
     )
      ,)
    );
  }
}

Widget screen(){
  return ListTile(leading: CircleAvatar(
    backgroundImage: AssetImage('assets/mn.jpeg'),
    radius: 30,
  ),
    title:Text('Samsung',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    subtitle:  Text('* 5.0(23 Reviews)',style: TextStyle(fontSize: 18),),
    trailing: Text("\$10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
  );

}
