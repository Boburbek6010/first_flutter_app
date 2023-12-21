import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isFavourite1 = false;
  bool isFavourite2 = false;
  bool isFavourite3 = false;
  bool isFavourite4 = false;
  bool isFavourite5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text("Close"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.green,
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("More places to explore", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),),
            _mainContainer("Borobudur Tample", isFavourite1, (){
              setState(() {});
              isFavourite1 = !isFavourite1;
            }),
            _mainContainer("Ulun Danu Beratan", isFavourite2, (){
              setState(() {});
              isFavourite2 = !isFavourite2;
            }),
            _mainContainer("Borobudur Tample", isFavourite3, (){
              setState(() {});
              isFavourite3 = !isFavourite3;
            }),
            _mainContainer("Ulun Danu Beratan", isFavourite4, (){
              setState(() {});
              isFavourite4 = !isFavourite4;
            }),
            _mainContainer("Borobudur Tample", isFavourite5, (){
              setState(() {});
              isFavourite5 = !isFavourite5;
            }),
          ],
        ),
      ),
    );
  }
}


Widget _mainContainer (String name, bool isLiked, Function() onTap){
  return Container(
    height: 80,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 15),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 255, 253, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 15,
            offset: const Offset(5, 5),
          )
        ]
    ),
    child: MaterialButton(
      onPressed: (){},
      onLongPress: onTap,
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,

              ),),
              const Text("Megaleng"),
            ],
          ),
          Icon(Icons.favorite, color: isLiked ?Colors.red:Colors.red.withOpacity(0.3), size: 35),
        ],
      ),
    ),
  );
}