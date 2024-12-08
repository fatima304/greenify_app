import 'package:flutter/material.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/textfield_part.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextfieldPart(
          hintText: 'First name',
          prefixIcon: Icons.person_rounded,
        ),
        TextfieldPart(
          hintText: 'Last name',
          prefixIcon: Icons.person_rounded,
        ),
        TextfieldPart(
          hintText: 'email',
          prefixIcon: Icons.person_rounded,
        ),
        TextfieldPart(
          hintText: 'Password',
          labelText: 'Enter a strong password',
          prefixIcon: Icons.person_rounded,
        ),
        TextfieldPart(
          hintText: 'Confirm Password',
          labelText: 'Enter a strong password',
          prefixIcon: Icons.person_rounded,
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
