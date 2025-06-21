import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? actions;
  final bool hideLeading;
  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    required this.hideLeading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? Text(''),
      centerTitle: true,
      titleSpacing: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      actions: [actions ?? const SizedBox.shrink()],
      leading:
          hideLeading
              ? null
              : IconButton(
                icon: const Icon(Icons.arrow_back, size: 24),
                onPressed: () => context.pop(),
              ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
