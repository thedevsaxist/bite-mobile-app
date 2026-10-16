import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import 'package:calorie_estimator/core/theme/app_spacing.dart';

/// A text field with its label above it, as in the design.
///
/// [compact] gives the smaller 48px field with a 13px label used on the
/// profile and meal-details forms.
class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    required this.label,
    this.hint,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.inputFormatters,
    this.obscureText = false,
    this.suffixIcon,
    this.maxLines = 1,
    this.compact = false,
    this.errorText,
    super.key,
  });

  final String label;
  final String? hint;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final Widget? suffixIcon;
  final int maxLines;
  final bool compact;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final radius = BorderRadius.circular(
      compact ? AppRadii.sm : AppRadii.input,
    );
    final inputTheme = Theme.of(context).inputDecorationTheme;

    OutlineInputBorder? withRadius(InputBorder? border) =>
        border is OutlineInputBorder
        ? border.copyWith(borderRadius: radius)
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 6,
      children: [
        Text(
          label,
          style: compact
              ? textTheme.labelMedium?.copyWith(fontSize: 13)
              : textTheme.labelMedium,
        ),
        TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          validator: validator,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          maxLines: maxLines,
          style: compact ? textTheme.bodyMedium : textTheme.bodyLarge,
          decoration: InputDecoration(
            hintText: hint,
            errorText: errorText,
            suffixIcon: suffixIcon,
            contentPadding: compact
                ? const EdgeInsets.symmetric(horizontal: 14, vertical: 13)
                : null,
            border: withRadius(inputTheme.border),
            enabledBorder: withRadius(inputTheme.enabledBorder),
            focusedBorder: withRadius(inputTheme.focusedBorder),
            errorBorder: withRadius(inputTheme.errorBorder),
            focusedErrorBorder: withRadius(inputTheme.focusedErrorBorder),
          ),
        ),
      ],
    );
  }
}
