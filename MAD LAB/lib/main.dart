import 'package:flutter/material.dart';
import 'experiment_2.dart';
import 'experiment_3.dart';
import "experiment_4.dart";
import 'login_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      routes: {
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignUpPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiments'),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Experiment2()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Experiment3()),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Experiment4()),
                  );
                }
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Experiment ${index + 2}'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
