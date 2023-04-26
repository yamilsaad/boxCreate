import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          //MenuOptions(),
          SizedBox(height: 50),
          InputWidget(
            onProveedorSelected: (String) {},
          ),
        ],
      ),
    );
  }
}
