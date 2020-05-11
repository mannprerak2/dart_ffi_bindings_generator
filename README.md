# dart_ffi_bindings_generator
Generate FFI bindings for Dart directly from C header files

# How will bindings be generated -
LibClang is used to parse C header files to extract all the Functions, Structs, etc. This data is stored as list of objects, which is then passed on to ffi_tool, which then converts these to actual bindings.