import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Color Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BackgroundColorChanger(),
    );
  }
}

class BackgroundColorChanger extends StatefulWidget {
  const BackgroundColorChanger({super.key});
  @override
  _BackgroundColorChangerState createState() => _BackgroundColorChangerState();
}

class _BackgroundColorChangerState extends State<BackgroundColorChanger> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background Color Changer'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _changeBackgroundColor(Colors.red),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Red'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _changeBackgroundColor(Colors.green),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Green'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _changeBackgroundColor(Colors.blue),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Blue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
