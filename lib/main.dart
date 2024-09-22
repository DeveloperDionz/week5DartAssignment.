import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Use super parameters for the key
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple UI App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Use super parameters for the key
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Dionysius App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to my new App!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Using print even though the linter suggests using a logger
                print('Button Pressed!');
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?fit=crop&w=800&q=60',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
