import 'dart:developer';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const id = "/login_page";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;

  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
        ),
        // backgroundColor: const Color(0xff457846),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto",
                  color: Colors.black,
                ),
              ),

              //userName
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 47,
                  child: TextField(
                    onEditingComplete: (){
                      setState(() {});
                    },
                    onTap: (){
                      print("object");
                    },
                    onChanged: (value){
                      setState(() {});
                    },
                    onSubmitted: (value){
                      setState(() {});
                    },
                    controller: userNameController,
                    textInputAction: TextInputAction.none,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      // suffix: const Icon(Icons.account_circle_sharp),
                      // suffixIcon: const Icon(Icons.search),
                      // prefix: const Icon(Icons.account_circle_sharp),
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      label: const Text("Username", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          // color: Colors.blue
                      ),),
                      // hintText: "Username",
                      //   hintStyle: const TextStyle(
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //     fontFamily: "Roboto",
                      //     color: Color(0xff161F16)
                      //   ),
                        filled: true,
                        fillColor: Colors.white,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                        ),
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: SizedBox(
                  height: 47,
                  child: TextField(
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {});
                          isPasswordVisible = !isPasswordVisible;
                        },
                        splashRadius: 1,
                        icon: !isPasswordVisible ?const Icon(Icons.visibility) :const Icon(Icons.visibility_off),
                      ),


                      label: const Text("Password", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        // color: Colors.blue
                      ),),
                      // hintText: "Username",
                      //   hintStyle: const TextStyle(
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //     fontFamily: "Roboto",
                      //     color: Color(0xff161F16)
                      //   ),
                      filled: true,
                      fillColor: Colors.white,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100,),
              Text("UserName: ${userNameController.text}"),
              const SizedBox(height: 10,),
              Text("Password: ${passwordController.text}"),
              const SizedBox(height: 50),
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: MaterialButton(
          onPressed: ()async{

            await launchUrl(_url);


            // if(Platform.isAndroid || Platform.isWindows){
            //   showDialog(
            //     barrierDismissible: false,
            //       context: context,
            //       builder: (context){
            //         return AlertDialog(
            //           title: const Text("Are you sure?"),
            //           content: const Text("This item will be permanently deleted if you say [SAY]"),
            //           actions: [
            //             TextButton(
            //               onPressed: (){
            //                 Navigator.pop(context);
            //               },
            //               child: const Text("cancel"),
            //             ),
            //             TextButton(
            //               onPressed: (){
            //
            //               },
            //               child: const Text("delete"),
            //             ),
            //           ],
            //         );
            //       }
            //   );
            // } else{
            //   showDialog(
            //       context: context,
            //       builder: (context){
            //         return CupertinoAlertDialog(
            //           title: const Text("Are you sure?"),
            //           content: const Text("This item will be permanently deleted if you say [SAY]"),
            //           actions: [
            //             TextButton(
            //               onPressed: (){
            //                 Navigator.pop(context);
            //               },
            //               child: const Text("cancel"),
            //             ),
            //             TextButton(
            //               onPressed: (){
            //
            //               },
            //               child: const Text("delete"),
            //             ),
            //           ],
            //         );
            //
            //       }
            //   );
            // }
          },
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          child: const Icon(Icons.add, color: Colors.white,),
        ),
      ),
    );
  }
}
