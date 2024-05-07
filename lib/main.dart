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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text("Ornek"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Tıkla"),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.green,
            child: Text("Container"),
          )
        ],
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
