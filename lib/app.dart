import 'package:flutter/material.dart';
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title:Center(
      child: Text('Ecom App UI',style: TextStyle(color: Colors.black,fontSize: 25.0,),
      ),
    ),
    backgroundColor: Colors.white,),
      body: Column(children: [
        secondScreen(),
        secondScreen(),
        secondScreen(),
        secondScreen(),
        secondScreen(),

        ElevatedButton(onPressed: (){
          Navigator.pop(context);//this pop back your file we set it at where are file opened
        },child:Text('Back'))
      ],
      ),
    ),
    );
  }
}
Widget secondScreen(){
  return ListTile(leading: CircleAvatar(
    backgroundImage: AssetImage('assets/mbo.jpeg'),),
    title:Text('oppo',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
    subtitle: Text('* 5.0(23 Reviews)'
      '\n 20 pieces '
      '\n Quantity: 1',style: TextStyle(fontSize: 18),),
    trailing: Text("\$90",style: TextStyle(color: Colors.purple,fontSize: 20),),

  );
}