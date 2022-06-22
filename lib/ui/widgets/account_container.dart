import 'package:flutter/material.dart';
import 'package:test_screen/style/image.dart';
import 'package:test_screen/style/text_style.dart';

class AccountContainer extends StatelessWidget {
  const AccountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      color: Colors.grey[900],
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ClipOval(
            child: Image.asset(
              AppImages.image,
              height: 100,
              width: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'USD Account',
                style: AppTextStyle.grey19Text,
              ),
              const SizedBox(
                width: 65,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.white38,
                      width: 0.8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Hide',
                    style: AppTextStyle.white17Text,
                  ),
                ),
              ),
            ],
          ),
          const Text(
            '\$ 180,970.83',
            style: AppTextStyle.white20Text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
