import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCat = ModalRoute.of(context)!.settings.arguments as bool;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.pets),
        title: const Text('Second Page'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                print('Current status of is_cat: $isCat');
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.black),
              ),
              child: const Text('Back'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/Golden Retriever.png',
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
