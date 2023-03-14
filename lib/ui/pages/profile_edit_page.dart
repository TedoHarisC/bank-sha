import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
                //NOTE : USERNAME INPUT
                const CustomFormField(
                  title: "Username",
                ),
                const SizedBox(height: 16),
                //NOTE : FULL NAME INPUT
                const CustomFormField(
                  title: "Full Name",
                ),
                const SizedBox(height: 16),
                //NOTE : EMAIL INPUT
                const CustomFormField(
                  title: "Email Address",
                ),
                const SizedBox(height: 16),
                //NOTE : PASSWORD INPUT
                const CustomFormField(
                  title: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                //NOTE : BUTTON SIGN IN
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/profile-edit-success", (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
