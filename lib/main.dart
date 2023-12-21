import 'package:first_flutter_app/pages/first_page.dart';
import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/second_page.dart';
import 'package:first_flutter_app/pages/splash_page.dart';
import 'package:first_flutter_app/pages/third_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      title: "First Flutter App",
      initialRoute: HomePage.id,
      // home: const FirstPage(),
      // navigatorObservers: [MyNavigationListener()],
      routes: {
        HomePage.id: (context) => const HomePage(),
        SplashPage.id: (context) => const SplashPage(),
        "first": (context) => const FirstPage(),
        "second": (context) => const SecondPage(),
        "third": (context) => const ThirdPage(),
      },
    );
  }

}

class MyNavigationListener extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    print('Did pop: ${route.settings.name}');
  }
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    print('Did push: ${route.settings.name}');
  }
  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    print('Did Remove: ${route.settings.name}');

  }
}

