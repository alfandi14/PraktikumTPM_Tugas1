import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(130),
                child: FlutterLogo(
                  size: 40,
                ),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: "Username"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: "Password"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: ElevatedButton(onPressed: (){},
                  child: Text("Login In"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(400, 30))
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: Text("Forgot Password?",
                  style: TextStyle(color: Colors.black54)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
