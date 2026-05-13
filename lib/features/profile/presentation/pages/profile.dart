import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(title: 'Profile'),
      body: Center(
        child: AppText('Profile Screen', variant: TextVariant.headingLarge),
      ),
    );
  }
}
