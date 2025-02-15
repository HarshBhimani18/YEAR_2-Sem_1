import 'package:flutter/material.dart';
import 'package:Flutter_project/about_page/about_page.dart';
import 'package:Flutter_project/add_edit_user/add_edit_user_screen.dart';
import 'package:Flutter_project/list_view/list_view.dart';
import 'package:Flutter_project/user_management/user.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      "icon": Icons.person_add,
      "name": "Add User",
      "color": Color(0xFFE91E63), // Light Pink
      "onTap": (context) async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserEntryPage()),
        );
        if (result != null) {
          User user = await User.create();
          await user.addUser(result);
        }
      },
    },
    {
      "icon": Icons.list,
      "name": "User List",
      "color": Color(0xFFE91E63), // Light Pink
      "onTap": (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserListPage()),
        );
      },
    },
    {
      "icon": Icons.favorite_border,
      "name": "Favorites",
      "color": Color(0xFFE91E63), // Light Pink
      "onTap": (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserListPage(isFavourite: true)),
        );
      },
    },
    {
      "icon": Icons.info_outline,
      "name": "About Us",
      "color": Color(0xFFE91E63), // Light Pink
      "onTap": (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutPage()),
        );
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Matrimonial",
          style: GoogleFonts.pacifico(fontSize: 33, color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: menuItems.map((item) => _buildMenuItem(context, item)).toList(),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () => item['onTap'](context),
      child: Container(
        decoration: BoxDecoration(
          color: item['color'], // Set pink background for all buttons
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white, // White circle for contrast
                shape: BoxShape.circle,
              ),
              child: Icon(
                item['icon'],
                size: 50,
                color: Colors.pink, // Pink icon color
              ),
            ),
            SizedBox(height: 10),
            Text(
              item['name'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white, // White text for better contrast
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
