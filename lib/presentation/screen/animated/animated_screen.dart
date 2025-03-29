import 'package:flutter/material.dart';

class AnimetedScreen extends StatefulWidget {
  const AnimetedScreen({super.key});

  @override
  State<AnimetedScreen> createState() => _AnimetedScreenState();
}

class _AnimetedScreenState extends State<AnimetedScreen> {
   double _width = 100;
   double _height = 100;
   Color _color = Colors.blue;

    void _changeContainer() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _width,
              height: _height,
              color: _color,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeContainer,
              child: const Text('Animar'),
            ),
          ],
        ),
      ),
    );
  }
}