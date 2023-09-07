import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ModernBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const ModernBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Color.fromRGBO(69,203,178,1.000),
        tabBackgroundColor: Colors.grey[200]!,
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 8,
        tabBorderRadius: 24,
        onTabChange: (value) => onTabChange!(value),
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.info,
            text: "About DriveGreen",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Our Mission",
          ),
        ],
      ),
    );
  }
}
