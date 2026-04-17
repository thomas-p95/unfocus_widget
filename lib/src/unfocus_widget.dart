import 'package:flutter/material.dart';

///@template unfocus_widget
///
/// UnFocusWidget is a widget that unfocuses the keyboard when touching
/// outside the [child] widget.
///
/// @endtemplate
class UnFocusWidget extends StatelessWidget {
  ///@macro unfocus_widget
  const UnFocusWidget({
    required this.child,
    super.key,
  });

  /// The child widget to unfocus when touching outside.
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: ColoredBox(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
