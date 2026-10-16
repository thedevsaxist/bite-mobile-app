import 'package:material_ui/material_ui.dart';

/// Lets a screen use `Spacer`s to pin content to the bottom on tall phones,
/// while still scrolling on short phones or when the keyboard is open.
class FillScrollView extends StatelessWidget {
  const FillScrollView({required this.child, this.padding, super.key});

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final padding = this.padding ?? EdgeInsets.zero;

    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        padding: padding,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: (constraints.maxHeight - padding.vertical).clamp(
              0,
              double.infinity,
            ),
          ),
          child: IntrinsicHeight(child: child),
        ),
      ),
    );
  }
}
