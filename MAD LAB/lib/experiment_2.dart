import 'package:flutter/material.dart';

class Experiment2 extends StatelessWidget {
  final Color appBarColor =
      const Color.fromRGBO(255, 165, 0, 1); // RGB color for app bar
  final String title = 'My App';
  final String tagline = 'Welcome to *My App*';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: appBarColor,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Experiment 2',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Welcome to *My App*',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
