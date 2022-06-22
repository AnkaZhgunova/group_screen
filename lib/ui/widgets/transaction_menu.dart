import 'package:flutter/material.dart';
import 'package:test_screen/style/text_style.dart';

class TransactionMenu extends StatelessWidget {
  const TransactionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction History',
              style: AppTextStyle.white17Text,
            ),
            const Spacer(
              flex: 1,
            ),
            const DownMenu(
              value: [
                'USD Dollar',
                'EUR Euro',
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 47,
                  width: 300,
                  child: DownMenu(
                    value: [
                      'All',
                      'Last 2 days',
                    ],
                  ),
                ),
                DatePicker(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DownMenu extends StatelessWidget {
  final List<String> value;
  const DownMenu({
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white38,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButtonFormField(
          dropdownColor: Colors.black,
          items: value.map((currency) {
            return DropdownMenuItem(
              value: currency,
              child: Text(
                currency,
                style: AppTextStyle.white17Text,
              ),
            );
          }).toList(),
          onChanged: (_) {
            FocusScope.of(context).requestFocus(
              FocusNode(),
            );
          },
          icon: const Icon(
            Icons.arrow_downward,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  final ValueChanged<DateTime>? onChanged;
  const DatePicker({
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white38,
          width: 1,
        ),
      ),
      child: IconButton(
        onPressed: () {
          showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );
        },
        icon: const Icon(
          Icons.date_range,
          color: Colors.white,
        ),
      ),
    );
  }
}
