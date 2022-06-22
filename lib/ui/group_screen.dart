import 'package:flutter/material.dart';

import 'package:test_screen/style/icons.dart';
import 'package:test_screen/style/image.dart';
import 'package:test_screen/ui/widgets/account_container.dart';
import 'package:test_screen/ui/widgets/transaction_menu.dart';
import 'package:test_screen/ui/widgets/transactions_history.dart';





class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppIcons.backIcon,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppIcons.shareIcon,
                  ),
                ),
              ],
            ),
            const AccountContainer(),
            const TransactionMenu(),
            const TransactionsHistory(
              date: 'Yesterday',
              quantity: 5,
              pathToImage: AppImages.image,
              amount: '\$ -55.31 USD',
              name: 'Nike',
              time: '12:23',
            ),
            const TransactionsHistory(
              date: 'Sat, Dec 11',
              quantity: 2,
              pathToImage: AppImages.image,
              amount: '\$ - 300.00',
              name: 'McDonald\'s',
              time: '12:23',
            ),
            const TransactionsHistory(
              date: 'Thurs, Dec 9',
              quantity: 2,
              pathToImage: AppImages.image,
              amount: '\$ - 300.00',
              name: 'Louis Vuitton',
              time: '12:23',
            ),
          ],
        ),
      ),
    );
  }
}
