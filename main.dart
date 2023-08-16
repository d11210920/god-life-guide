import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const todoApp(),
    );
  }
}

class Todo {
  final String title;

  Todo({required this.title});
}

class todoApp extends StatefulWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  State<todoApp> createState() => _todoApp();
}

class _todoApp extends State<todoApp> {
  String title = "";
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xffc7d6c7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          children: [
            Flexible(
                child: SizedBox(
              height: 40,
            )),
            Flexible(
                child: Text(
              'TO-DO LIST',
              style: TextStyle(
                  fontFamily: 'NanumGothic',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black),
              textAlign: TextAlign.center,
            )),
            Flexible(
              child: SizedBox(
                height: 20,
              ),
            ),
            Row(children: [
              Expanded(
                  child: TextField(
                      onChanged: (value) {
                        setState(() {
                          title = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '할 일',
                      ))),
              IconButton(
                  onPressed: () {
                    setState((){
                      todos.add(Todo(title: title));
                    });
                  },
                  icon: Icon(Icons.add))
            ]),
            Flexible(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (_, index) {
                      return list();
                    })),
          ],
        ),
      ),
    ));
  }
  Widget list(){
    return ListTile(
      title: Text(title),
      trailing: IconButton(
        icon: Icon(
          Icons.close
        ),
        onPressed: (){
          setState((){
          });
        }
      )
    );
  }
}
