import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return MyAppState();
  }
}
class MyAppState extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_MyAppState();
}
class _MyAppState extends State<MyAppState>{
  Color color = Color.fromARGB(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: const Text('Easy game'),
        ),
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: (){
                setState((){
                  count++;
                  if (count %2==0){
                    color = Color.fromARGB(
                        Random().nextInt(256),
                        Random().nextInt(256),
                        Random().nextInt(256),
                        Random().nextInt(256));
                  }
                }
                );
              },
              child: const Text('Click vào đây để đổi màu'),
            ),
          ),
        ),
        backgroundColor: color,
      ),
    );
  }
}











