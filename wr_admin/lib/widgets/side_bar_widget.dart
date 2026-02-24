import 'package:flutter/material.dart';
import 'package:wr_admin/theme/app_theme.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: TextButton(
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          foregroundColor: Colors.white,
          overlayColor: Colors.white.withValues(alpha: 0.08),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: AppTheme.secondaryColor,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
