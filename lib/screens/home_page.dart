import 'package:flutter/material.dart';
import 'package:navegacao/screens/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page2'),
                    builder: (context) => const Page2(),
                  ),
                );
              },
              child: const Text("Page 2 via PAGE"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Page 2 via NAMED"),
            ),
          ],
        ),
      ),
    );
  }
}
