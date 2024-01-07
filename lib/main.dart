import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Use Profile")),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Image.network(
              "images/man.png",
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextFormField(
              decoration: InputDecoration(
                  label: const Text(" Email"),
                  suffixIcon: Icon(Icons.arrow_right),
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  label: const Text(" password"),
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.teal),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Alredy have account",
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sing up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.teal),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
