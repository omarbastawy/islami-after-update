import 'package:contact/Contact_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    routes: {
      homescreen.RouteName:(buildContext)=>homescreen(),
},
initialRoute:
homescreen.RouteName

    );
  }
}
