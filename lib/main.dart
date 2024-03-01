import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('login',),
          // centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding:const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  width:120,
                  height:120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.blueGrey)
                  ),
                  child: Image.network('https://tse1.mm.bing.net/th?id=OIP.auVPY58zZxbU9hqfkmFb1gHaHa&pid=Api&rs=1&c=1&qlt=95&h=180'),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border:OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                    hintText: 'email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'password'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(280, 0, 0, 0),
                child: Text('forget password'),
              ),
              ElevatedButton(onPressed: (){}, child: Text('login')),
              SizedBox(
                height:20,
              ),
              Text('OR'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){}, child: Text('facebook login')),
            ],
          ),
        ),
      ),
    );
  }
}

