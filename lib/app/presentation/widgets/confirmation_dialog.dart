import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "../../core/theme/app_color.dart";
import "../../core/theme/app_theme.dart";
import "../../core/utils/enums.dart";
import "action_button.dart";

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.titleText,
    required this.messageText,
    this.positiveText,
    this.negativeText,
  });

  final String titleText;
  final String messageText;
  final String? positiveText;
  final String? negativeText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        titleText,
        style: AppTheme.primaryTextStyle.copyWith(
          fontSize: 14,
          color: AppColors.kPrimaryBlue,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            messageText,
            textAlign: TextAlign.center,
            style: AppTheme.primaryTextStyle.copyWith(
              fontSize: 12,
              color: AppColors.kPrimaryBlue,
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Expanded(
                child: ActionButton(
                  buttonText: negativeText ?? 'Cancel',
                  type: ActionButtonType.other,
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ),
              const Gap(12),
              Expanded(
                child: ActionButton(
                  buttonText: positiveText ?? 'Confirm',
                  type: ActionButtonType.primary,
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
