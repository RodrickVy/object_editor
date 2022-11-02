
/// a macro that will print out all the properties of an object as a string.
/// currently the object , cannot have non-primitive dart data types.

import 'package:macro_builder/definition.dart';

const objectAsString = _ObjectAsString();

class _ObjectAsString
    implements
    ClassDeclarationMacro{

  const _ObjectAsString();

  @override
  void visitClassDeclaration(ClassDeclaration declaration, ClassDeclarationBuilder builder) {
    final List<String> _types = [];

    // final List<MethodDeclaration> _methods= [];
    for (FieldDeclaration element in declaration.fields) {
      _types.add(element.type.toString());
    }
    //
    // for (MethodDeclaration element in declaration.methods) {
    //   _methods.add(element);
    // }
    builder
      .addToClass(Declaration('final List<String> types = [...$_types]'));
  }

}