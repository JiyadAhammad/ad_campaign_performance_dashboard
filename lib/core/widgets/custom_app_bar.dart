import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.titleWidget,
    this.centerTitle = false,
    this.leading,
    this.actions,
    this.showBackButton = false,
  });

  final String title;
  final bool centerTitle;
  final Widget? leading;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            )
          : leading,
      title: titleWidget ?? AppText(title, variant: TextVariant.headingLarge),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
