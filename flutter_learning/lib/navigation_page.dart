import 'package:flutter/material.dart';
import 'package:flutter_learning/todo_page.dart';
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TodoPage(), // The widget class name of your new page
                ),
              );
            },
              child: const Text('Go to Next Page'),
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TodoPage(passedItem: "Hello from Page 1"),
                ),
              );
            },
              child: const Text('Send a msg to TodoPage!'),
            ),
          ],
        ),
      ),
    );
  }
}
