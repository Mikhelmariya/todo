import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/widgets/createlist.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 863.81,
          //width: 398.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.59),
            color: Color(0xffF1F5F9),
          ),
        ),
        Positioned(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.24, top: 31.58),
              child: Text(
                "Create new task",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 11,
                top: 59.42,
              ),
              child: Text(
                "Task Title",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.29, left: 23),
              child: Container(
                width: 351,
                height: 50,
                decoration: BoxDecoration(color: Color(0xfffffffff)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.41, left: 14.59),
                  child: Text("Go for shopping"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21.71, left: 23),
              child: Text("Category"),
            ),
            Container(
              height: 50,
              width: 304,
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Row(
                  children: [
                    Image.asset('images/study.png'),
                    Image.asset('images/run.png'),
                    Image.asset('images/party.png'),
                    // Image.asset('images/img1.png'),
                    // Image.asset('images/img2.png'),
                    // Image.asset('images/img3.png'),
                  ],

                  //child: ListView.builder(
                  //    itemCount: 4,
                  //   itemBuilder: ((context, index) {
                  //    return createtask();
                  //  })),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 23),
              child: Text(
                "Date and time",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7.29, left: 10),
                  child: Container(
                    width: 171.85,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xfffffffff)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.41, left: 14.59),
                      child: Text("18/12/23"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.29, left: 23),
                  child: Container(
                    width: 171.85,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xfffffffff)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.41, left: 14.59),
                      child: Text("12:00 pm"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ]),
    );
  }
}
