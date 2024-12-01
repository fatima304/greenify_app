import 'package:flutter/material.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/register_part.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
      ),
      child: const RegisterPart(),
    );
  }
}
