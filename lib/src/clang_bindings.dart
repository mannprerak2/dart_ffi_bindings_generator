// AUTOMATICALLY GENERATED. DO NOT EDIT.

import './typedefs.dart';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as ffi;

/// Dynamic library
final ffi.DynamicLibrary _dynamicLibrary = ffi.DynamicLibrary.open(
  './wrapped_libclang_library/libwrapped_clang.so',
);

/// C function `test_in_c`.
int test_in_c() {
  return _test_in_c();
}

final _test_in_c_Dart _test_in_c =
    _dynamicLibrary.lookupFunction<_test_in_c_C, _test_in_c_Dart>(
  'test_in_c',
);
typedef _test_in_c_C = ffi.Int32 Function();
typedef _test_in_c_Dart = int Function();

/// C function `clang_createIndex`.
ffi.Pointer<ffi.Void> clang_createIndex(
  int excludeDeclarationsFromPCH,
  int displayDiagnostics,
) {
  return _clang_createIndex(excludeDeclarationsFromPCH, displayDiagnostics);
}

final _clang_createIndex_Dart _clang_createIndex = _dynamicLibrary
    .lookupFunction<_clang_createIndex_C, _clang_createIndex_Dart>(
  'clang_createIndex',
);
typedef _clang_createIndex_C = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 excludeDeclarationsFromPCH,
  ffi.Int32 displayDiagnostics,
);
typedef _clang_createIndex_Dart = ffi.Pointer<ffi.Void> Function(
  int excludeDeclarationsFromPCH,
  int displayDiagnostics,
);

/// C function `clang_disposeIndex`.
void clang_disposeIndex(
  ffi.Pointer<ffi.Void> index,
) {
  _clang_disposeIndex(index);
}

final _clang_disposeIndex_Dart _clang_disposeIndex = _dynamicLibrary
    .lookupFunction<_clang_disposeIndex_C, _clang_disposeIndex_Dart>(
  'clang_disposeIndex',
);
typedef _clang_disposeIndex_C = ffi.Void Function(
  ffi.Pointer<ffi.Void> index,
);
typedef _clang_disposeIndex_Dart = void Function(
  ffi.Pointer<ffi.Void> index,
);

/// C function `clang_parseTranslationUnit`.
ffi.Pointer<CXTranslationUnitImpl> clang_parseTranslationUnit(
  ffi.Pointer<ffi.Void> cxindex,
  ffi.Pointer<ffi.Utf8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Utf8>> cmd_line_args,
  int num_cmd_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  int num_unsaved_files,
  int options,
) {
  return _clang_parseTranslationUnit(cxindex, source_filename, cmd_line_args,
      num_cmd_line_args, unsaved_files, num_unsaved_files, options);
}

final _clang_parseTranslationUnit_Dart _clang_parseTranslationUnit =
    _dynamicLibrary.lookupFunction<_clang_parseTranslationUnit_C,
        _clang_parseTranslationUnit_Dart>(
  'clang_parseTranslationUnit',
);
typedef _clang_parseTranslationUnit_C = ffi.Pointer<CXTranslationUnitImpl>
    Function(
  ffi.Pointer<ffi.Void> cxindex,
  ffi.Pointer<ffi.Utf8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Utf8>> cmd_line_args,
  ffi.Int32 num_cmd_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  ffi.Uint32 num_unsaved_files,
  ffi.Uint32 options,
);
typedef _clang_parseTranslationUnit_Dart = ffi.Pointer<CXTranslationUnitImpl>
    Function(
  ffi.Pointer<ffi.Void> cxindex,
  ffi.Pointer<ffi.Utf8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Utf8>> cmd_line_args,
  int num_cmd_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  int num_unsaved_files,
  int options,
);

/// C function `clang_disposeTranslationUnit`.
void clang_disposeTranslationUnit(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
) {
  _clang_disposeTranslationUnit(cxtranslation_unit);
}

final _clang_disposeTranslationUnit_Dart _clang_disposeTranslationUnit =
    _dynamicLibrary.lookupFunction<_clang_disposeTranslationUnit_C,
        _clang_disposeTranslationUnit_Dart>(
  'clang_disposeTranslationUnit',
);
typedef _clang_disposeTranslationUnit_C = ffi.Void Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
);
typedef _clang_disposeTranslationUnit_Dart = void Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
);

/// C function `clang_getTranslationUnitCursor_wrap`.
ffi.Pointer<CXCursor> clang_getTranslationUnitCursor_wrap(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
) {
  return _clang_getTranslationUnitCursor_wrap(cxtranslation_unit);
}

final _clang_getTranslationUnitCursor_wrap_Dart
    _clang_getTranslationUnitCursor_wrap = _dynamicLibrary.lookupFunction<
        _clang_getTranslationUnitCursor_wrap_C,
        _clang_getTranslationUnitCursor_wrap_Dart>(
  'clang_getTranslationUnitCursor_wrap',
);
typedef _clang_getTranslationUnitCursor_wrap_C = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
);
typedef _clang_getTranslationUnitCursor_wrap_Dart = ffi.Pointer<CXCursor>
    Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslation_unit,
);

/// C function `clang_getNumDiagnostics`.
int clang_getNumDiagnostics(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslationunit,
) {
  return _clang_getNumDiagnostics(cxtranslationunit);
}

final _clang_getNumDiagnostics_Dart _clang_getNumDiagnostics = _dynamicLibrary
    .lookupFunction<_clang_getNumDiagnostics_C, _clang_getNumDiagnostics_Dart>(
  'clang_getNumDiagnostics',
);
typedef _clang_getNumDiagnostics_C = ffi.Uint32 Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslationunit,
);
typedef _clang_getNumDiagnostics_Dart = int Function(
  ffi.Pointer<CXTranslationUnitImpl> cxtranslationunit,
);

/// C function `clang_getDiagnostic`.
ffi.Pointer<ffi.Void> clang_getDiagnostic(
  ffi.Pointer<CXTranslationUnitImpl> cxTranslationUnit,
  int position,
) {
  return _clang_getDiagnostic(cxTranslationUnit, position);
}

final _clang_getDiagnostic_Dart _clang_getDiagnostic = _dynamicLibrary
    .lookupFunction<_clang_getDiagnostic_C, _clang_getDiagnostic_Dart>(
  'clang_getDiagnostic',
);
typedef _clang_getDiagnostic_C = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<CXTranslationUnitImpl> cxTranslationUnit,
  ffi.Int32 position,
);
typedef _clang_getDiagnostic_Dart = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<CXTranslationUnitImpl> cxTranslationUnit,
  int position,
);

/// C function `clang_formatDiagnostic_wrap`.
ffi.Pointer<CXString> clang_formatDiagnostic_wrap(
  ffi.Pointer<ffi.Void> diagnostic,
  int diagnosticOptions,
) {
  return _clang_formatDiagnostic_wrap(diagnostic, diagnosticOptions);
}

final _clang_formatDiagnostic_wrap_Dart _clang_formatDiagnostic_wrap =
    _dynamicLibrary.lookupFunction<_clang_formatDiagnostic_wrap_C,
        _clang_formatDiagnostic_wrap_Dart>(
  'clang_formatDiagnostic_wrap',
);
typedef _clang_formatDiagnostic_wrap_C = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> diagnostic,
  ffi.Uint32 diagnosticOptions,
);
typedef _clang_formatDiagnostic_wrap_Dart = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> diagnostic,
  int diagnosticOptions,
);

/// C function `clang_defaultDiagnosticDisplayOptions`.
int clang_defaultDiagnosticDisplayOptions() {
  return _clang_defaultDiagnosticDisplayOptions();
}

final _clang_defaultDiagnosticDisplayOptions_Dart
    _clang_defaultDiagnosticDisplayOptions = _dynamicLibrary.lookupFunction<
        _clang_defaultDiagnosticDisplayOptions_C,
        _clang_defaultDiagnosticDisplayOptions_Dart>(
  'clang_defaultDiagnosticDisplayOptions',
);
typedef _clang_defaultDiagnosticDisplayOptions_C = ffi.Uint32 Function();
typedef _clang_defaultDiagnosticDisplayOptions_Dart = int Function();

/// C function `clang_getCString_wrap`.
ffi.Pointer<ffi.Utf8> clang_getCString_wrap(
  ffi.Pointer<CXString> cxstringPtr,
) {
  return _clang_getCString_wrap(cxstringPtr);
}

final _clang_getCString_wrap_Dart _clang_getCString_wrap = _dynamicLibrary
    .lookupFunction<_clang_getCString_wrap_C, _clang_getCString_wrap_Dart>(
  'clang_getCString_wrap',
);
typedef _clang_getCString_wrap_C = ffi.Pointer<ffi.Utf8> Function(
  ffi.Pointer<CXString> cxstringPtr,
);
typedef _clang_getCString_wrap_Dart = ffi.Pointer<ffi.Utf8> Function(
  ffi.Pointer<CXString> cxstringPtr,
);

/// C function `clang_disposeString_wrap`.
void clang_disposeString_wrap(
  ffi.Pointer<CXString> cxstringPtr,
) {
  _clang_disposeString_wrap(cxstringPtr);
}

final _clang_disposeString_wrap_Dart _clang_disposeString_wrap =
    _dynamicLibrary.lookupFunction<_clang_disposeString_wrap_C,
        _clang_disposeString_wrap_Dart>(
  'clang_disposeString_wrap',
);
typedef _clang_disposeString_wrap_C = ffi.Void Function(
  ffi.Pointer<CXString> cxstringPtr,
);
typedef _clang_disposeString_wrap_Dart = void Function(
  ffi.Pointer<CXString> cxstringPtr,
);

/// C function `clang_getCursorSpelling_wrap`.
ffi.Pointer<CXString> clang_getCursorSpelling_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorSpelling_wrap(cursor);
}

final _clang_getCursorSpelling_wrap_Dart _clang_getCursorSpelling_wrap =
    _dynamicLibrary.lookupFunction<_clang_getCursorSpelling_wrap_C,
        _clang_getCursorSpelling_wrap_Dart>(
  'clang_getCursorSpelling_wrap',
);
typedef _clang_getCursorSpelling_wrap_C = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXCursor> cursor,
);
typedef _clang_getCursorSpelling_wrap_Dart = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXCursor> cursor,
);

/// C function `clang_getCursorKind_wrap`.
int clang_getCursorKind_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorKind_wrap(cursor);
}

final _clang_getCursorKind_wrap_Dart _clang_getCursorKind_wrap =
    _dynamicLibrary.lookupFunction<_clang_getCursorKind_wrap_C,
        _clang_getCursorKind_wrap_Dart>(
  'clang_getCursorKind_wrap',
);
typedef _clang_getCursorKind_wrap_C = ffi.Int32 Function(
  ffi.Pointer<CXCursor> cursor,
);
typedef _clang_getCursorKind_wrap_Dart = int Function(
  ffi.Pointer<CXCursor> cursor,
);

/// C function `clang_getCursorKindSpelling_wrap`.
ffi.Pointer<CXString> clang_getCursorKindSpelling_wrap(
  int kind,
) {
  return _clang_getCursorKindSpelling_wrap(kind);
}

final _clang_getCursorKindSpelling_wrap_Dart _clang_getCursorKindSpelling_wrap =
    _dynamicLibrary.lookupFunction<_clang_getCursorKindSpelling_wrap_C,
        _clang_getCursorKindSpelling_wrap_Dart>(
  'clang_getCursorKindSpelling_wrap',
);
typedef _clang_getCursorKindSpelling_wrap_C = ffi.Pointer<CXString> Function(
  ffi.Int32 kind,
);
typedef _clang_getCursorKindSpelling_wrap_Dart = ffi.Pointer<CXString> Function(
  int kind,
);

/// C function `clang_getCursorType_wrap`.
ffi.Pointer<CXType> clang_getCursorType_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorType_wrap(cursor);
}

final _clang_getCursorType_wrap_Dart _clang_getCursorType_wrap =
    _dynamicLibrary.lookupFunction<_clang_getCursorType_wrap_C,
        _clang_getCursorType_wrap_Dart>(
  'clang_getCursorType_wrap',
);
typedef _clang_getCursorType_wrap_C = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXCursor> cursor,
);
typedef _clang_getCursorType_wrap_Dart = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXCursor> cursor,
);

/// C function `clang_getTypeSpelling_wrap`.
ffi.Pointer<CXString> clang_getTypeSpelling_wrap(
  ffi.Pointer<CXType> typePtr,
) {
  return _clang_getTypeSpelling_wrap(typePtr);
}

final _clang_getTypeSpelling_wrap_Dart _clang_getTypeSpelling_wrap =
    _dynamicLibrary.lookupFunction<_clang_getTypeSpelling_wrap_C,
        _clang_getTypeSpelling_wrap_Dart>(
  'clang_getTypeSpelling_wrap',
);
typedef _clang_getTypeSpelling_wrap_C = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXType> typePtr,
);
typedef _clang_getTypeSpelling_wrap_Dart = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXType> typePtr,
);

/// C function `clang_getResultType_wrap`.
ffi.Pointer<CXType> clang_getResultType_wrap(
  ffi.Pointer<CXType> functionType,
) {
  return _clang_getResultType_wrap(functionType);
}

final _clang_getResultType_wrap_Dart _clang_getResultType_wrap =
    _dynamicLibrary.lookupFunction<_clang_getResultType_wrap_C,
        _clang_getResultType_wrap_Dart>(
  'clang_getResultType_wrap',
);
typedef _clang_getResultType_wrap_C = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> functionType,
);
typedef _clang_getResultType_wrap_Dart = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> functionType,
);

/// C function `clang_getPointeeType_wrap`.
ffi.Pointer<CXType> clang_getPointeeType_wrap(
  ffi.Pointer<CXType> pointerType,
) {
  return _clang_getPointeeType_wrap(pointerType);
}

final _clang_getPointeeType_wrap_Dart _clang_getPointeeType_wrap =
    _dynamicLibrary.lookupFunction<_clang_getPointeeType_wrap_C,
        _clang_getPointeeType_wrap_Dart>(
  'clang_getPointeeType_wrap',
);
typedef _clang_getPointeeType_wrap_C = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> pointerType,
);
typedef _clang_getPointeeType_wrap_Dart = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> pointerType,
);

/// C function `clang_visitChildren_wrap`.
int clang_visitChildren_wrap(
  ffi.Pointer<CXCursor> cursor,
  ffi.Pointer<ffi.NativeFunction<visitorFunctionSignature>>
      pointerToVisitorFunc,
  ffi.Pointer clientData,
) {
  return _clang_visitChildren_wrap(cursor, pointerToVisitorFunc, clientData);
}

final _clang_visitChildren_wrap_Dart _clang_visitChildren_wrap =
    _dynamicLibrary.lookupFunction<_clang_visitChildren_wrap_C,
        _clang_visitChildren_wrap_Dart>(
  'clang_visitChildren_wrap',
);
typedef _clang_visitChildren_wrap_C = ffi.Int32 Function(
  ffi.Pointer<CXCursor> cursor,
  ffi.Pointer<ffi.NativeFunction<visitorFunctionSignature>>
      pointerToVisitorFunc,
  ffi.Pointer clientData,
);
typedef _clang_visitChildren_wrap_Dart = int Function(
  ffi.Pointer<CXCursor> cursor,
  ffi.Pointer<ffi.NativeFunction<visitorFunctionSignature>>
      pointerToVisitorFunc,
  ffi.Pointer clientData,
);

/// C struct `CXUnsavedFile`.
class CXUnsavedFile extends ffi.Struct {
  static ffi.Pointer<CXUnsavedFile> allocate() {
    return ffi.allocate<CXUnsavedFile>();
  }
}

/// C struct `CXString`.
class CXString extends ffi.Struct {
  static ffi.Pointer<CXString> allocate() {
    return ffi.allocate<CXString>();
  }
}

/// C struct `CXCursor`.
class CXCursor extends ffi.Struct {
  @ffi.Int32()
  int kind;

  static ffi.Pointer<CXCursor> allocate() {
    return ffi.allocate<CXCursor>();
  }
}

/// C struct `CXType`.
class CXType extends ffi.Struct {
  @ffi.Int32()
  int kind;

  static ffi.Pointer<CXType> allocate() {
    return ffi.allocate<CXType>();
  }
}

/// C struct `CXTranslationUnitImpl`.
class CXTranslationUnitImpl extends ffi.Struct {
  static ffi.Pointer<CXTranslationUnitImpl> allocate() {
    return ffi.allocate<CXTranslationUnitImpl>();
  }
}

/// C global `justANum`.
final int justANum = _dynamicLibrary
    .lookup<ffi.Int32>(
      'justANum',
    )
    .value;
