import 'package:flutter/material.dart';

import 'Chekbox.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  double Price = 20;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.network(
              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ07W62fzpVqoP6SSHWpoaLZWCuGe2nXLB3ymTgZjgWtnVvVl7D",
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "بيتزا بالخضار",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "بيتزا بالخضار المميزة",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.,
                              //   spreadRadius: -9,
                              blurRadius: .5,
                              offset: const Offset(
                                  1, 1), // changes position of shadow
                            ),
                          ],
                          border: Border.all(width: .5),
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  count += 1;
                                });
                              },
                              child: Text("+"),
                            ),
                            Text(
                              "${count}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  count -= 1;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        " د.أ  ${Price.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                  text: "اختيار من الحجم",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: " (اختياري) ",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                )),
                Text("اختر من القائمة"),
                const SizedBox(height: 15),
                Chekboxitem(title: "صنف 1", descrption: ""),
                Chekboxitem(title: "صنف 2", descrption: "( +9.00 د.أ)"),
                Chekboxitem(title: "صنف 3", descrption: "( +9.00 د.أ)"),
                const SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                  text: "اختيار من الاضافات",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: " (اختياري) ",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                )),
                Text("اختر من القائمة"),
                const SizedBox(height: 15),
                Chekboxitem(title: "صنف 1", descrption: ""),
                Chekboxitem(title: "صنف 2", descrption: "( +9000 د.أ)"),
                Chekboxitem(title: "صنف 3", descrption: "( +9000 د.أ)"),
                const SizedBox(height: 15),
              ],
            ),
          ),
          ElevatedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.lightBlueAccent,
                boxShadow: [
                  BoxShadow(
                    // color: Colors.,
                    //   spreadRadius: -9,
                    blurRadius: .5,
                    offset: const Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text((count * Price).toStringAsFixed(2)),
                  Text(
                    'اضافة الى السلة',
                  ),
                ],
              ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(0, 45),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
