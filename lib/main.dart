import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      appBar: AppBar(

        title: Text('InkWell Widget'),
        backgroundColor: Color(0xFF1BDEC8),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print('Inkwell used onTap');
          },
          onLongPress: (){
            print('On long press');
          },
          onDoubleTap: (){
            print('On double tap');
          },
      child : Container(
          width: 200,
          height: 200,
          color: Color(0xFFFFED34),
        child: Center(
          child: InkWell(
            onTap: (){
              print('Text widget tapped!');
          },
        child: Text('Click here!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),),
        ),
        ),
      ));
 }
}
