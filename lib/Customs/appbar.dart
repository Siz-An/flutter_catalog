import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon; // Optional icon parameter
  final Color? iconColor; // Optional icon color parameter
  final VoidCallback? onIconPressed; // Callback for icon press

  CustomAppBar({
    required this.title,
    this.icon,
    this.iconColor,
    this.onIconPressed, // Initialize the callback
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue[700],
      elevation: 10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.blue[500]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      actions: [
        if (icon != null) // Check if icon is provided
          IconButton(
            icon: Icon(icon, color: iconColor ?? Colors.white), // Use provided color or default to white
            onPressed: onIconPressed, // Call the passed callback
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
