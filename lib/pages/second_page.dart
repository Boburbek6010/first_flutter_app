import 'package:flutter/material.dart';
import '../models/user_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    var result = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("User name: ${result.name}", style: const TextStyle(
              fontSize: 30
            ),),

            Text("User age: ${result.age}", style: const TextStyle(
                fontSize: 30
            ),),

            Text("User don't like: ${result.hobby}", style: const TextStyle(
                fontSize: 30
            ),),

            const Text("Second Page", style: TextStyle(
                fontSize: 30,
                color: Colors.blue
            ),),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context, "Orqaga qaytish");
              },
              color: Colors.blue,
              child: const Text("Go Next"),
            )
          ],
        ),
      ),
    );
  }
}
