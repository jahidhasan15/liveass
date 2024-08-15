import 'package:flutter/material.dart';

void main() {
  runApp(TextStylingApp());
}

class TextStylingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Text Styling'),
        ),
        body: TextStylingScreen(),
      ),
    );
  }
}
class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              final snackBar = SnackBar(content: Text('You clicked the button!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Click Me'),
          ),
        ],
      ),
    );
  }
}
