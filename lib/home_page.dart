import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const days = 30;
    const name = "Codepur";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Poppy's Catalog"),
      ),
      body: const Center(
        child:
            Text("Hello World! \n\n Welcome to $days days of Flutter by $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
