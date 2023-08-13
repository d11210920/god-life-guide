import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
          backgroundColor: Colors.black,
        ),

        body: Container(
          color: Colors.lightGreen.shade300,
          child: Center(
            child: Container(
              height: 400,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(4,4)
                    )
                  ]
              ),
              child: Column(
                children: [
                  const SizedBox(height: 32,),
                  Text(
                      'To-do List',
                      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30)
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: 200,
                    child:Text('  텍스트',style: TextStyle(fontSize: 17,color: Colors.grey),),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.black, width: 1)
                    ),

                  ),
                  Container(

                    height: 30,
                    width: 200,
                    child: Text('  투두1',style: TextStyle(fontSize: 17,color: Colors.black),),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.5,
                          blurRadius: 3,
                          color: Colors.black45,
                          offset: Offset(2,2)
                        )
                      ]
                    ),
                  ),
                  Container(

                    height: 30,
                    width: 200,
                    child: Text('  투두2',style: TextStyle(fontSize: 17,color: Colors.black),),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0.5,
                              blurRadius: 3,
                              color: Colors.black45,
                              offset: Offset(2,2)
                          )
                        ]
                    ),
                  )
                ],
                ),

              ),

                ),
              ),
            ),
          );
  }
}

