import 'package:flutter/material.dart';
import 'package:navegacao/screens/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page1'),
                    builder: (context) => const Page1(),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Page 1 via PAGE"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Page 1 via NAMED"),
            ),
          ],
        ),
      ),
    );
  }
}
