import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kWhite,
      surfaceTintColor: AppColors.kWhite,
      elevation: 100,
      shadowColor: AppColors.kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: -0.8,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
