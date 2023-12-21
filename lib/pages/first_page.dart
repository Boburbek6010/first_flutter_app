import 'package:first_flutter_app/models/user_model.dart';
import 'package:first_flutter_app/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  User user = User(name: "Zafarbek", hobby: "Reading books", age: 20);

  String result = "";

  Future<void> navigation()async{
    result = await Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => const SecondPage(),
        settings: RouteSettings(arguments: user),
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Back Data: $result"),

            const Text(
              "First",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () async {
                await navigation();
                // Navigator.pushNamed(context, "second", arguments: user);
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
