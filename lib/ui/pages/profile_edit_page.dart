import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final usernameController = TextEditingController(text: '');
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthSuccess) {
      usernameController.text = authState.user.username!;
      nameController.text = authState.user.name!;
      emailController.text = authState.user.email!;
      passwordController.text = authState.user.password!;
    }
  }

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
                CustomFormField(
                  title: "Username",
                  controller: usernameController,
                ),
                const SizedBox(height: 16),
                //NOTE : FULL NAME INPUT
                CustomFormField(
                  title: "Full Name",
                  controller: nameController,
                ),
                const SizedBox(height: 16),
                //NOTE : EMAIL INPUT
                CustomFormField(
                  title: "Email Address",
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                //NOTE : PASSWORD INPUT
                CustomFormField(
                  title: "Password",
                  obscureText: true,
                  controller: passwordController,
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
