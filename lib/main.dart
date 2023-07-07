
import 'package:flutter/material.dart';
import 'package:project_uas_mintarsih_06tplm006/provider/cuaca_provider.dart';
import 'package:project_uas_mintarsih_06tplm006/screen/home_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CuacaProvider>(
          create: (context) => CuacaProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}