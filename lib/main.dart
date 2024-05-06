import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Widget Detail"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: const Text("Menu"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        color: Colors.green,
        child: const Text("Ornekk"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value = value + 1;
          });
        },
        child: const Text("+"),
      ),
    ));
  }
}
