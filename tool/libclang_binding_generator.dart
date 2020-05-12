// Dev tool for generating libclang bindings using the FFI tool
import 'package:ffi_tool/c.dart';
import 'dart:io';

const _voidPointer = '*ffi.Void';
const _charPointer = '*ffi.Utf8';
const _charPointerPointer = '**ffi.Utf8';
const _modifiedVisitorFuncPtr = '*ffi.NativeFunction<visitorFunctionSignature>';

const _cxTranslationUnitImp = 'CXTranslationUnitImpl';
const _cxUnsavedFile = 'CXUnsavedFile';
const _cxString = 'CXString';
const _cxCursor = 'CXCursor';
const _cxType = 'CXType';

const _cxindex = _voidPointer;
const _cxtranslationunit = '*$_cxTranslationUnitImp';

void main() {
  // Generates bindings for libclang wrapper
  generateFile(File('lib/src/clang_bindings.dart'), library);
}

final library = Library(
  // Where the library is found?
  dynamicLibraryPath: './wrapped_libclang_library/libwrapped_clang.so',

  // Optional imports
  importedUris: {ImportedUri('./typedefs.dart')},

  /// List of generated functions, structs, and global variables
  elements: <Element>[
    Func(
      name: 'test_in_c',
      parameterTypes: [],
      returnType: 'int32',
    ),
    Func(
      name: 'clang_createIndex',
      parameterTypes: ['int32', 'int32'],
      parameterNames: ['excludeDeclarationsFromPCH', 'displayDiagnostics'],
      returnType: _cxindex,
    ),
    Func(
      name: 'clang_disposeIndex',
      parameterTypes: [_cxindex],
      parameterNames: ['index'],
      returnType: 'void',
    ),
    Func(
      name: 'clang_parseTranslationUnit',
      parameterTypes: [
        _cxindex,
        _charPointer,
        _charPointerPointer,
        'int32',
        '*$_cxUnsavedFile',
        'uint32',
        'uint32'
      ],
      parameterNames: [
        'cxindex',
        'source_filename',
        'cmd_line_args',
        'num_cmd_line_args',
        'unsaved_files',
        'num_unsaved_files',
        'options',
      ],
      returnType: _cxtranslationunit,
    ),
    Func(
      name: 'clang_disposeTranslationUnit',
      parameterTypes: [_cxtranslationunit],
      parameterNames: ['cxtranslation_unit'],
      returnType: 'void',
    ),
    Func(
      name: 'clang_getTranslationUnitCursor_wrap',
      parameterTypes: [_cxtranslationunit],
      parameterNames: ['cxtranslation_unit'],
      returnType: '*$_cxCursor',
    ),
    Func(
      name: 'clang_getNumDiagnostics',
      parameterTypes: [_cxtranslationunit],
      parameterNames: ['cxtranslationunit'],
      returnType: 'Uint32',
    ),
    Func(
      name: 'clang_getDiagnostic',
      parameterTypes: [_cxtranslationunit, 'int32'],
      returnType: _voidPointer,
      parameterNames: ['cxTranslationUnit', 'position'],
    ),
    Func(
      name: 'clang_formatDiagnostic_wrap',
      parameterTypes: [_voidPointer, 'Uint32'],
      parameterNames: ['diagnostic', 'diagnosticOptions'],
      returnType: '*$_cxString',
    ),
    Func(
      name: 'clang_defaultDiagnosticDisplayOptions',
      parameterTypes: [],
      returnType: 'Uint32',
    ),
    Func(
      name: 'clang_getCString_wrap',
      parameterTypes: ['*$_cxString'],
      parameterNames: ['cxstringPtr'],
      returnType: _charPointer,
    ),
    Func(
      name: 'clang_disposeString_wrap',
      parameterTypes: ['*$_cxString'],
      parameterNames: ['cxstringPtr'],
      returnType: 'void',
    ),
    Func(
      name: 'clang_getCursorSpelling_wrap',
      parameterTypes: ['*$_cxCursor'],
      parameterNames: ['cursor'],
      returnType: '*$_cxString',
    ),
    Func(
      name: 'clang_getCursorKind_wrap',
      parameterTypes: ['*$_cxCursor'],
      parameterNames: ['cursor'],
      returnType: 'int32',
    ),
    Func(
      name: 'clang_getCursorKindSpelling_wrap',
      parameterTypes: ['int32'],
      parameterNames: ['kind'],
      returnType: '*$_cxString',
    ),
    Func(
      name: 'clang_getCursorType_wrap',
      parameterTypes: ['*$_cxCursor'],
      parameterNames: ['cursor'],
      returnType: '*$_cxType',
    ),
    Func(
      name: 'clang_getTypeSpelling_wrap',
      parameterTypes: ['*$_cxType'],
      parameterNames: ['typePtr'],
      returnType: '*$_cxString',
    ),
    Func(
      name: 'clang_getResultType_wrap',
      parameterTypes: ['*$_cxType'],
      parameterNames: ['functionType'],
      returnType: '*$_cxType',
    ),
    Func(
      name: 'clang_getPointeeType_wrap',
      parameterTypes: ['*$_cxType'],
      parameterNames: ['pointerType'],
      returnType: '*$_cxType',
    ),
    Func(
      name: 'clang_visitChildren_wrap',
      parameterTypes: ['*$_cxCursor', _modifiedVisitorFuncPtr, '*void'],
      parameterNames: ['cursor', 'pointerToVisitorFunc', 'clientData'],
      returnType: 'int32',
    ),
    // Struct(name: 'CXTranslationUnitImpl', fields: []),
    Struct(name: _cxUnsavedFile, fields: []),
    Struct(name: _cxString, fields: []),
    Struct(name: _cxCursor, fields: [
      Field(type: 'int32', name: 'kind'),
    ]),
    Struct(name: _cxType, fields: [
      Field(type: 'int32', name: 'kind'),
    ]),
    Struct(name: _cxTranslationUnitImp, fields: []),
    Global(name: "justANum", type: 'int32')
  ],
);
