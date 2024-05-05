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
      body: Center(
        child: Image(
          image: AssetImage(
              "assets/images/image-1.jpg"), //assets libin içine eklenmez
        ),
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
