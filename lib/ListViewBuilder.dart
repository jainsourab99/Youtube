import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

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
