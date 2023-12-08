import 'dart:ffi';
import 'package:flutter/material.dart';

class MoneyCurrencyAmont extends StatelessWidget {
  int amount;

  MoneyCurrencyAmont({required this.amount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: amount < 5 ? 4 : 12,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(amount < 5 ? 20 : 4),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Text(
                '\$${amount.toString()}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0), // Remove default padding
                    ),
                    child: Center(
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center, // Center the text
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0), // Remove default padding
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center, // Center the text
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
