import 'package:flutter/material.dart';
import 'package:object_editor/macros/object_as_string.dart';

void main() {
  runApp(const ObjectEditorApp());
}


@objectAsString
class TestObject{
  final String name;
  final List<String> colors;

  TestObject(this.name, this.colors);
}


class ObjectEditorApp extends StatelessWidget {
  const ObjectEditorApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Editor',
      theme: ThemeData.dark(),
      home: const SizedBox(),
    );
  }
}

