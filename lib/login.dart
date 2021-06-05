import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  bool isObscurePassword= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Center(
    child: Text('Ecom App UI',style: TextStyle(color: Colors.black,fontSize: 25.0),
        // leading:IconButton(icon: Icon(Icons.notifications,color: Colors.white),onPressed: (){},

    )),
      backgroundColor: Colors.white,
    ),

      body: Container(
        padding: EdgeInsets.only(left: 5,top: 5),
        child: ListView(children: [
          Stack(
            children: [
              Container(
                width: 150,height: 110,
              child: Text('@',style: TextStyle(fontSize: 90),
              ),

              // decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.white),
              // image: DecorationImage(fit: BoxFit.cover,
              //     image: AssetImage('assets/photo.jpg'))
              // ),
              ),

            ],
          ),
          Text('Account Information',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

          SizedBox(height: 30,),
          buildTextField("Full Name", "User", true),
          buildTextField("Email", "User@gmail.com", false),
          buildTextField("Phone", "+0900-78601", false),
          buildTextField("Address", "New York, Random Street House No.72", false),
          buildTextField("Gender", "Male", false),
          buildTextField("Date of Birth", "October 13, 1999", false),

        ],

        ),
      ),
    );

  }
  Widget buildTextField(String labelText,String placeholder,bool isPasswordTextField){
    return Padding(padding: EdgeInsets.only(bottom: 30),
    child: TextField(obscureText: isPasswordTextField ? isObscurePassword: false,
    decoration:  InputDecoration(suffixIcon:isPasswordTextField ?
        IconButton(icon: Icon(Icons.drive_file_rename_outline,color: Colors.grey,)
            ):null,
      contentPadding: EdgeInsets.only(bottom: 5),
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: placeholder,
      hintStyle: TextStyle(fontSize: 16,
      fontWeight: FontWeight.bold,color:Colors.grey,)
    ),
    )
    );
  }
}

