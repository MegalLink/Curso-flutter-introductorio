import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'list': Icons.list,
  'counter': Icons.lock_clock,
  'input': Icons.input,
  'infinite-scroll': Icons.autorenew,
};
Icon getIcon(String nombre) {
  return Icon(
    _icons[nombre],
    color: Colors.blue,
  );
}
