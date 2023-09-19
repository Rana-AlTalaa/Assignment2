import 'package:flutter/material.dart';

class Chekboxitem extends StatefulWidget {
  final String title;
  final String descrption;
  const Chekboxitem({super.key, required this.title, required this.descrption});

  @override
  State<Chekboxitem> createState() => _ChekboxitemState();
}

class _ChekboxitemState extends State<Chekboxitem> {
  bool? isActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isActive,
              onChanged: ((value) {
                setState(
                  () {
                    isActive = value;
                  },
                );
              }),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.descrption,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
        Text(widget.title)
      ],
    );
  }
}
