import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(duration:3, goToPage: const MyApp(),)
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  //const SplashPage({super.key});
  int duration = 0;
  Widget goToPage;

  SplashPage({super.key, required this.goToPage,required this.duration});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: duration),(){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => goToPage)
      );
    }
    );
    return Scaffold(
      
      body: Image.asset('images/swimming_nathan.png',
      alignment: Alignment.center,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,

      )
    );
  }
}

