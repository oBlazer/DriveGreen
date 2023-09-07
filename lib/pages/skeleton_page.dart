import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import '../components/bottom_nar_bar.dart';
import '../theme/colors.dart';
import 'home_page.dart';
import 'like_page.dart';

class SkeletonPage extends StatefulWidget {
  const SkeletonPage({super.key});

  @override
  State<SkeletonPage> createState() => _SkeletonPageState();
}

class _SkeletonPageState extends State<SkeletonPage> {
  // currently selected index
  int _selectedIndex = 0;

  // navigate bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List _pages = [
    // homepage
    const HomePage(),

    // likepage
    const LikePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: darkBackgroundColor,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: lightBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // app logo
                const SizedBox(height: 35),
                Center(
                  child: Image.asset(
                    'lib/images/DriveGreen Logo.png',
                    width: 150,
                    height: 100,
                    ),
                ),

                // home page
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 25),
                  child: ListTile(
                    leading: const Icon(Icons.home),
                    title: Text(
                      "HOME",
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                    onTap: () {
                      // this is already the home page so just pop drawer
                      Navigator.pop(context);
                    },
                  ),
                ),

                // setting page
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.supervised_user_circle),
                    title: Text(
                      "PROFILE",
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                    onTap: () {
                      // pop drawer
                      Navigator.pop(context);

                      // go to settings page
                      Navigator.pushNamed(context, '/settingspage');
                    },
                  ),
                ),
              ],
            ),

            // logout
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  "LOGOUT",
                  style: TextStyle(color: Colors.grey[900]),
                ),
                onTap: () {
                  // drawer
                  Navigator.pop(context);

                  // go to login screen
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/loginpage', (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ModernBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "DriveGreen",
               style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              )
            ),
          ),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}
