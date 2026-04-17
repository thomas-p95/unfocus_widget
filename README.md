# unfocus_widget

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

Put it around the area that should receive “outside” taps—usually `Scaffold.body`:

```dart
Scaffold(
  body: UnFocusWidget(
    child: Padding(
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

With a scrollable form, wrap the scroll view:

```dart
body: UnFocusWidget(
  child: SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        // TextFields...
      ],
    ),
  ),
),
```

Run the demo: `cd example && flutter run`

Repository: [https://github.com/thomas-p95/unfocus_widget](https://github.com/thomas-p95/unfocus_widget)