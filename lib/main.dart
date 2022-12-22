import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Login(),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Center(child: Text('CHITCHAT')),
          toolbarTextStyle: TextStyle(fontStyle: FontStyle.italic),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.grey)),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              'Sıgn In',
              style: TextStyle(color: Colors.black54, fontSize: 50),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.mail_lock_outlined, color: Colors.black),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'E-mail',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.key_sharp, color: Colors.black87),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sıgn In',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blueGrey[800]),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(left: 150),
          child: Text('Creat an account ',style: TextStyle(
            color: Colors.black54,fontSize: 20,
            decoration: TextDecoration.underline,
            
          ),),),
          OutlinedButton(onPressed: (){}, child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.g_mobiledata_sharp,color: Colors.black,),
              Text('Sıgn ın with google',style: TextStyle(color: Colors.black54 ,fontSize: 16),),
            ],
          ),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey)
          ),
          ),
        ],
      ),
    );
  }
}
