import 'package:flutter/material.dart';
import 'package:navegacao/screens/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page4'),
                    builder: (context) => const Page4(),
                  ),
                );
              },
              child: const Text("Page 4 via PAGE"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Page 4 via NAMED"),
            ),
          ],
        ),
      ),
    );
  }
}