import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bcg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            //image
            Align(
              alignment: isUp ?const Alignment(1, -1):const Alignment(1, 0.8),
              child: Image.asset(
                "assets/images/person.gif",
                height: 230,
              ),
            ),
            //
            const Spacer(),
            const Spacer(),
            const Spacer(),
            const Spacer(),

            //button
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: MaterialButton(
                height: 80,
                shape: const CircleBorder(),
                color: Colors.white.withOpacity(0.6),
                onPressed: (){},
                onHighlightChanged: (_){
                  print("isUp: $isUp");
                  setState(() {});
                  isUp = _;
                },
                child: const Icon(Icons.upload),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
