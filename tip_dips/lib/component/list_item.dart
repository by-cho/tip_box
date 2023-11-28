import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String itemDate;
  final String tip;

  const ListItem(
      {required this.title,
      required this.itemDate,
      required this.tip,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 6,
              ),
              Text(itemDate),
            ],
          ),
          Text(
            '+ \$$tip',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
