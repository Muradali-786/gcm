import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../core/theme/app_color.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/enums.dart';

class Status extends StatelessWidget {
  const Status({
    super.key,
    required this.type,
  });

  final StatusType type;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: ElevatedButton(
        onPressed: null,
        style: _statusStyle(context),
        child: Text(_statusText),
      ),
    );
  }

  String get _statusText {
    switch (type) {
      case StatusType.approved:
        return 'Approved';
      case StatusType.rejected:
        return 'Rejected';
      case StatusType.pending:
        return 'Pending';
    }
  }

  Color get _statusColor {
    switch (type) {
      case StatusType.approved:
        return AppColors.kApproveButton;
      case StatusType.rejected:
        return AppColors.kRejectButton;
      case StatusType.pending:
        return AppColors.kOrange;
    }
  }

  Color get _statusTextColor {
    switch (type) {
      case StatusType.approved:
        return AppColors.kWhite;
      case StatusType.rejected:
        return AppColors.kWhite;
      case StatusType.pending:
        return AppColors.kWhite;
    }
  }

  Color get _statusBorderColor {
    switch (type) {
      case StatusType.approved:
        return AppColors.kApproveButton;
      case StatusType.rejected:
        return AppColors.kRejectButton;
      case StatusType.pending:
        return AppColors.kOrange;
    }
  }

  ButtonStyle _statusStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: _statusColor,
      foregroundColor: _statusTextColor,
      textStyle: AppTheme.primaryTextStyle.copyWith(
        fontSize: ResponsiveValue(
          context,
          defaultValue: 10,
          conditionalValues: [
            const Condition.largerThan(name: TABLET, value: 12),
          ],
        ).value.toDouble(),
        fontWeight: FontWeight.w500,
        color: _statusTextColor,
      ),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(
          color: _statusBorderColor,
        ),
      ),
    );
  }
}
