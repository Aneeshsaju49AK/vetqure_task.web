 import 'package:flutter/material.dart';

int selectedIndex = -1;
  bool logout = false;
  final List<Map<String, dynamic>> buttonData = [
    {"name": "Dashboard", "icon": Icons.home},
    {"name": "Calendar", "icon": Icons.person},
    {"name": "client", "icon": Icons.settings},
    {"name": "Profile", "icon": Icons.message},
    {"name": "Finace", "icon": Icons.notifications},
    {"name": "Order", "icon": Icons.help},
  ];