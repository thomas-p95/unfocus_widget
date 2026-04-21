# unfocus_widget

[![pub package](https://img.shields.io/pub/v/unfocus_widget?style=for-the-badge&logo=dart&logoColor=white)](https://pub.dev/packages/unfocus_widget)
[![likes](https://img.shields.io/pub/likes/unfocus_widget?style=for-the-badge)](https://pub.dev/packages/unfocus_widget/score)
[![pub points](https://img.shields.io/pub/points/unfocus_widget?style=for-the-badge)](https://pub.dev/packages/unfocus_widget/score)

![UnFocusWidget hero](https://raw.githubusercontent.com/thomas-p95/unfocus_widget/master/assets/unfocus_widget_hero.svg)

Wrap your UI with `UnFocusWidget` so tapping outside `TextField`s dismisses the keyboard.

## Add the dependency

```yaml
dependencies:
  unfocus_widget: <latest>
```

```bash
dart pub add unfocus_widget
```

## Use it

```dart
import 'package:unfocus_widget/unfocus_widget.dart';
```

Apply globally with `MaterialApp.builder`:

```dart
MaterialApp(
  builder: (context, child) {
    return UnFocusWidget(
      child: child ?? const SizedBox.shrink(),
    );
  },
  home: const MyHomePage(),
);
```

Or wrap outside `Scaffold`:

```dart
UnFocusWidget(
  child: Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: 'Email')),
          TextField(decoration: InputDecoration(labelText: 'Password')),
        ],
      ),
    ),
  ),
);
```

Run the demo: `cd example && flutter run`