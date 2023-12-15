import 'package:flutter/material.dart';
import 'package:my_project/ch14_1_navigation/user.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OneScreen'),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'OneScreen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context, '/two',
                        arguments: {
                          "arg1": 10,
                          "arg2": "hello10",
                          "arg3": User('kkang', 'seoul')
                        });

                    print('result: ${(result as User).name}');
                  },
                  child: const Text('Go Two'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
