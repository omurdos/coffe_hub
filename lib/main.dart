import 'package:coffee_hub/providers/drinks_details_provider.dart';
import 'package:coffee_hub/screens/drink_details_screen.dart';
import 'package:coffee_hub/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DrinksDetailsProvider(),)
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static Map<int, Color> color =
  {
    50:Color.fromRGBO(207,151,117, .1),
    100:Color.fromRGBO(207,151,117, .2),
    200:Color.fromRGBO(207,151,117, .3),
    300:Color.fromRGBO(207,151,117, .4),
    400:Color.fromRGBO(207,151,117, .5),
    500:Color.fromRGBO(207,151,117, .6),
    600:Color.fromRGBO(207,151,117, .7),
    700:Color.fromRGBO(207,151,117, .8),
    800:Color.fromRGBO(207,151,117, .9),
    900:Color.fromRGBO(207,151,117, 1),
  };
  MaterialColor colorCustom = MaterialColor(0xFFCF9775, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee HUB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        fontFamily: "Sen",
        visualDensity: VisualDensity.adaptivePlatformDensity,

        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          actionsIconTheme: IconThemeData(
            color: Color(0xFF401414)
          ),
          centerTitle: true,
          elevation: 0.0
        ),
        canvasColor: Color(0xffFAF4EE)
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.id : (BuildContext context) => HomeScreen(),
        DrinkDetailsScreen.id: (BuildContext context) => DrinkDetailsScreen()
      },
    );
  }
}
