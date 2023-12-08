import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_dips/component/money_currency_amont.dart';

class BottomSheetWidget extends StatelessWidget {
  BottomSheetWidget({
    super.key,
  });

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.82,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '받은 팁',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            MoneyCurrencyAmont(amount: 100),
            MoneyCurrencyAmont(amount: 50),
            MoneyCurrencyAmont(amount: 20),
            MoneyCurrencyAmont(amount: 10),
            MoneyCurrencyAmont(amount: 5),
            MoneyCurrencyAmont(amount: 2),
            MoneyCurrencyAmont(amount: 1),
          ],
        ),
      ),
    );
  }
}
