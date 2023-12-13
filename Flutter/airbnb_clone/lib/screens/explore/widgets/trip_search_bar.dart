// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TripSearchBar extends StatelessWidget {
  const TripSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
        decoration: BoxDecoration(
            boxShadow: [],
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey, width: 0.2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 20,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '행선지를 입력하세요',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Text('어디서나. 언제든지.게스트를 추가하세요',
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/images/filter.png',
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
