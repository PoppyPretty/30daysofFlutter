import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cintDays = 35;
    const cstrTarget = "Edo Worldeyy";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Poppy Catalog"),
      ),
      body: const Center(
        child: Text(
            "Hello $cstrTarget! \n\n Welcome to $cintDays days of Fluttering!!"),
      ),
      drawer: const Drawer(),
    );
  }
}
