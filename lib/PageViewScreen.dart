import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController _pagecontroller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page View",
        ),
        actions: [
          IconButton(
            onPressed: () {
              _pagecontroller.animateToPage(0,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceIn);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: () {
              _pagecontroller.animateToPage(1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceIn);
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: PageView(
        controller: _pagecontroller,
        onPageChanged: (value) {
          print(value);
        },
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Page 3"),
            ),
          ),
        ],
      ),
    );
  }
}
