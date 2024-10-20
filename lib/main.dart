import 'package:bootcamp_week1/LoginPage.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HonePage(),
    );
  }
}

class HonePage extends StatelessWidget {
  const HonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, seprator) {
            return Container(
              height: 20,
              width: double.infinity,
              color: Colors.grey,
            );
          },
          itemCount: 200,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              title: Text("UserName"),
              subtitle: Text("Dome description"),
              trailing: Icon(Icons.delete),
            );
          }
          // children: [
          //   ListTile(
          //     leading: Container(
          //       width: 50,
          //       height: 50,
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //         shape: BoxShape.circle,
          //       ),
          //     ),
          //     title: Text("UserName"),
          //     subtitle: Text("Dome description"),
          //     trailing: Icon(Icons.delete),
          //   ),
          // ],
          ),
    );
  }
}
