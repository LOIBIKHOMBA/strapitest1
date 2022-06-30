import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:strapiapptest/model/post.model.dart';
import 'package:strapiapptest/services/serviceapi.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Users(),
    );
  }
}

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (c, i) {
            return ListTile(
              title: Text(i.toString()),
            );
          }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              onPressed: () {
                ServicesApi().getdata();
              },
              child: const Text("check")),
          FloatingActionButton(
              onPressed: () async {
                await ServicesApi().postData();
              },
              child: const Text("Post")),
        ],
      ),
    );
  }
}
