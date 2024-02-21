<p align=center><img width="480" src="https://lucide.dev/lucide-logo-repo.svg" alt="Lucide Logo"></p>
<p align="center">
  <a href="https://github.com/lucide-icons/lucide/blob/main/LICENSE"><img src="https://img.shields.io/npm/l/lucide" alt="license"></a>
  <a href="https://pub.dev/packages/lucide_icons"><img src="https://img.shields.io/pub/v/lucide_icons.svg" alt="pub package"></a>
  <a href="https://pub.dev/packages/lucide_icons/publisher"><img src="https://img.shields.io/pub/publisher/lucide_icons.svg" alt="pub publisher"></a>
  <a href="https://github.com/lucide-icons/lucide-flutter/actions/workflows/publish.yaml"><img src="https://github.com/lucide-icons/lucide-flutter/actions/workflows/publish.yaml/badge.svg" alt="publish status"></a>
  <a href="https://discord.gg/EH6nSts"><img src="https://img.shields.io/discord/723074157486800936?label=chat&logo=discord&logoColor=%23ffffff&colorB=%237289DA" alt="discord chat"></a>
</p>

# Lucide

Community-run fork of [Feather Icons](https://github.com/feathericons/feather), open for anyone to contribute icons.

## Getting started

1. Add this package to your dependencies.

```yaml
dependencies:
  lucide_icons: latest_version
```

2. Get the dependencies.

```sh
flutter pub get
```

Keep in mind that due to Lucide being below version 1.0.0, all releases are treated like breaking changes by the package manager if you use caret syntax (e.g. `lucide_icons: ^0.257.0`). See the [documentation](https://dart.dev/tools/pub/dependencies#caret-syntax) for more details about caret syntax.

## Usage

You can use this package just like any other icon set.

```dart
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SomeWidget extends StatelessWidget {
  const SomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      // Pass your icon here.
      LucideIcons.accessibility,
      size: 100,
      color: Colors.red,
    );
  }
}

```

## Naming

All icons use names from https://lucide.dev/icons converted to camelCase to match Dart's naming conventions.

## Additional information

- This package requires at least Flutter 3.10 (Dart 3.0) to work.
- If there are any issues related to this package and usage with Flutter, go to [GitHub Issues](https://github.com/lucide-icons/lucide-flutter/issues) and report a bug.
- For issues with icons see the [main repository](https://github.com/lucide-icons/lucide/issues).
