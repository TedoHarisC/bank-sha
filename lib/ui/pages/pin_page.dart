import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 58,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 72),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 66),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
