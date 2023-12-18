import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool is_cat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.pets),
        title: const Text('First Page'),
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
                print('is_cat: $is_cat');
                setState(() {
                  is_cat = false;
                });
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: is_cat,
                );
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.black),
              ),
              child: const Text('Next'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/Scottish Fold cat.png',
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
