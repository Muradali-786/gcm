import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../core/theme/app_color.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/enums.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.type,
    required this.onPressed,
    this.buttonText,
    this.borderRadius,
    this.borderColor,
    this.padding,
    this.backgroundColor,
    this.forGroundColor,
    this.fontSize,
  });

  final ActionButtonType type;
  final VoidCallback? onPressed;
  final String? buttonText;
  final double? borderRadius;
  final Color? borderColor, backgroundColor, forGroundColor;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(context),
      child: Text(_buttonText),
    );
  }

  String get _buttonText {
    if (buttonText != null) return buttonText!;
    switch (type) {
      case ActionButtonType.approve:
        return 'Approve';
      case ActionButtonType.reject:
        return 'Reject';
      case ActionButtonType.primary:
        return 'Confirm';
      default:
        return 'Other';
    }
  }

  Color get _buttonColor {
    switch (type) {
      case ActionButtonType.approve:
        return backgroundColor ?? AppColors.kApproveButton;
      case ActionButtonType.reject:
        return backgroundColor ?? AppColors.kRejectButton;
      case ActionButtonType.primary:
        return backgroundColor ?? AppColors.kPrimaryBlue;
      default:
        return backgroundColor ?? Colors.grey;
    }
  }

  Color get _buttonTextColor {
    switch (type) {
      case ActionButtonType.approve:
        return forGroundColor ?? AppColors.kWhite;
      case ActionButtonType.reject:
        return forGroundColor ?? AppColors.kWhite;
      case ActionButtonType.primary:
        return forGroundColor ?? Colors.white;
      default:
        return forGroundColor ?? Colors.black;
    }
  }

  Color get _buttonBorderColor {
    switch (type) {
      case ActionButtonType.approve:
        return borderColor ?? AppColors.kApproveButton;
      case ActionButtonType.reject:
        return borderColor ?? AppColors.kRejectButton;
      case ActionButtonType.primary:
        return borderColor ?? AppColors.kPrimaryBlue;
      default:
        return borderColor ?? Colors.grey.shade300;
    }
  }

  ButtonStyle _buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: _buttonColor,
      foregroundColor: _buttonTextColor,
      textStyle: AppTheme.primaryTextStyle.copyWith(
        fontSize: ResponsiveValue(
          context,
          defaultValue: fontSize ?? 10,
          conditionalValues: [
            const Condition.largerThan(name: TABLET, value: 12),
          ],
        ).value.toDouble(),
        fontWeight: FontWeight.w500,
        color: _buttonTextColor,
      ),
      elevation: 0,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 8),
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 6),
        side: BorderSide(
          color: _buttonBorderColor,
        ),
      ),
    );
  }
}
