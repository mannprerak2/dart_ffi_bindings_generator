import 'package:dart_ffi_bindings_generator/src/code_generator/binding_string.dart';
import 'package:meta/meta.dart';

/// A binding class, parent class of all possible types
abstract class Binding {
  /// Name of element
  final String name;

  /// DartDoc for this (Optional)
  final String dartDoc;

  const Binding({@required this.name, this.dartDoc});

  BindingString toBindingString();
}
