import 'package:flutter/material.dart';

class createtask extends StatelessWidget {
  const createtask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 23),
      child: Container(
          height: 30,
          width: 300,
          child: Row(
            children: [
              Image.asset('images/run.png'),
            ],
          )),
    );
  }
}
