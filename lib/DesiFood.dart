import 'package:flutter/material.dart';

class Traditional extends StatefulWidget {
  static const String id = "Traditional";
  const Traditional({Key? key}) : super(key: key);

  @override
  State<Traditional> createState() => _TraditionalState();
}

class _TraditionalState extends State<Traditional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Traditional Food")),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Screen2"),
            ),
          ),
        ],
      ),
    );
  }
}
