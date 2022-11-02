
import 'package:build/build.dart';
import 'package:macro_builder/builder.dart';
import 'package:object_editor/macros/object_as_string.dart';



Builder declarationsBuilder(_) {
  return DeclarationsMacroBuilder(
    [objectAsString],
  );
}
