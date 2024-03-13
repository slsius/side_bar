import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(duration:3, goToPage: MyApp(),)
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
      drawer: NavBar(),
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

  SplashPage({required this.goToPage,required this.duration});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    }
    );
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Icon(Icons.favorite, color: Colors.black,size: 100,)
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('Welcome Page'),
      ),
    );
  }
}