
import 'package:flutter/material.dart';

void main() {
  runApp(JobHuntingModeApp());
}

class JobHuntingModeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobHuntingMode',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JobHuntingMode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to sign up page
              },
              child: Text('Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to sign in page
              },
              child: Text('Sign In'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to resume upload page
              },
              child: Text('Upload Resume'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to job listings page
              },
              child: Text('View Jobs'),
            ),
          ],
        ),
      ),
    );
  }
}