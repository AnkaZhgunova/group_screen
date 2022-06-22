import 'package:flutter/material.dart';
import 'package:test_screen/style/text_style.dart';

class TransactionsHistory extends StatelessWidget {
  final String date;
  final int quantity;
  final String pathToImage;
  final String amount;
  final String name;
  final String time;
  const TransactionsHistory({
    required this.date,
    required this.quantity,
    required this.pathToImage,
    required this.amount,
    required this.name,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              date,
              style: AppTextStyle.black18Text,
            ),
          ),
        ),
        Ink(
          color: Colors.white,
          child: ListView.separated(
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: ClipOval(
                  child: Image.asset(
                    pathToImage,
                    width: 40,
                    height: 40,
                  ),
                ),
                title: Text(name),
                subtitle: Text(time),
                trailing: Text(amount),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              color: Colors.grey,
            ),
            itemCount: quantity,
          ),
        ),
      ],
    );
  }
}
