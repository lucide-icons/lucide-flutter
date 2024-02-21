import 'dart:convert';
import 'dart:io';

import 'package:recase/recase.dart';

void main(List<String> args) {
  final fontsInfoFile = File('./assets/info.json');
  final fontsInfo = jsonDecode(
    fontsInfoFile.readAsStringSync(),
  ) as Map<String, dynamic>;

  final generatedOutput = <String>[
    "import 'package:flutter/widgets.dart';",
    '',
    'final class _IconData extends IconData {',
    '  const _IconData(super.codePoint)',
    "      : super(fontFamily: 'Lucide', fontPackage: 'lucide_icons');",
    '}',
    '',
    'class LucideIcons {',
  ];

  for (final icon in fontsInfo.entries) {
    final name = icon.key;
    final codePoint =
        '${icon.value['unicode']}'.replaceFirst('&#', '').replaceFirst(';', '');

    generatedOutput.add(
      '  static const IconData ${ReCase(name).camelCase} = _IconData(0x$codePoint);',
    );
  }

  generatedOutput.add('}');

  final outputFile = File('./lib/lucide_icons.dart');
  final output = '${generatedOutput.join('\n')}\n';
  outputFile.writeAsStringSync(output);
}
