import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit PIN'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //NOTE : OLD PIN INPUT
                const CustomFormField(
                  title: "Old PIN",
                ),
                const SizedBox(height: 16),
                //NOTE : NEW PIN INPUT
                const CustomFormField(
                  title: "New PIN",
                ),
                const SizedBox(height: 30),
                //NOTE : BUTTON SIGN IN
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
