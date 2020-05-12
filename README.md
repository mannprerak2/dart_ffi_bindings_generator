# dart_ffi_bindings_generator

Generate FFI bindings for Dart directly from C header files

> Work in progress.. see the github project [board](https://github.com/mannprerak2/dart_ffi_bindings_generator/projects/1) for details

## Using this package - 
- Add as dependency (can be a dev_dependency)
- Configurations must be provided in the pubspec.yaml file
- Run from root of project - `pub run dart_ffi_bindings_generator:generate`

## How will bindings be generated -
LibClang is used to parse C header files to extract all the Functions, Structs, etc. This data is stored as list of objects, which is then passed on to ffi_tool, which then converts these to actual bindings.

## Project Structure -

- `bin` - Contains generate.dart script which end user will execute
- `lib` - Contains code that will parse the C header files (LibClang bindings and AST interface)
- `tool` - Contains script to generate LibClang bindings using FFI tool (dev use only).
- `example` - Project to demostrate generatiion of bindings for given C header files.

## Building -
The dynamic library must be generated for this to work,
inside this package, use `build.sh` to generate dynamic library for linux

### Configurations -

- [ ] Path to libclang dynamic library: `libclang-dylib`