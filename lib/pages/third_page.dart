import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("Third page",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: (){},
            color: Colors.blue,
            child: const Text("Go Next"),
          )
        ],
      ),
    );
  }
}