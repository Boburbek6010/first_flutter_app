import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {

  void pressMe(String name){
    print("hello: $name");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              height: 60,
              minWidth: 200,
              splashColor: Colors.white,
              // shape: const StadiumBorder(),
              // shape: CircleBorder(),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(55),
              // ),
              color: Colors.blue,
              onPressed: (){
                print("Material Button");
              },
              onHighlightChanged: (value){
                print('onHighlightChanged: $value');
              },
              // onLongPress: (){
              //   print("On long Pressed");
              // },
              child: const Text("Material Button", style: TextStyle(
                color: Colors.white
              ),),
            ),

            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: (){},
              child: const Text("ElevatedButton"),
            ),

            IconButton(
              onPressed: (){
                print("IconButton");
              },
              icon: const Icon(Icons.account_circle_sharp),
            ),

            TextButton(
              onPressed: (){
                pressMe("Sardor");
              },
              child: const Text("Hello World"),
            )
          ],
        ),
      ),
    );
  }
}
