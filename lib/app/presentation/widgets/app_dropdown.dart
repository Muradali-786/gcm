
import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';
import '../../core/theme/app_styles.dart';
import '../models/drop_down_model.dart';

class AppDropdownSelector extends StatefulWidget {
  const AppDropdownSelector({
    super.key,
    required this.items,
    required this.onChanged,
    this.hint,
    this.autoCallFirstTime = true,
  });

  final List<DropdownModel> items;
  final String? hint;
  final Function(DropdownModel) onChanged;
  final bool autoCallFirstTime;

  @override
  State<AppDropdownSelector> createState() => _AppDropdownSelectorState();
}

class _AppDropdownSelectorState extends State<AppDropdownSelector> {
  DropdownModel? _selectedValue;

  @override
  void initState() {
    _selectedValue = widget.items.first;
    if (widget.autoCallFirstTime) {
      widget.onChanged.call(_selectedValue!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white54,
        border: Border.all(
          color: AppColors.kGray,
          width: 0.4,
        ),
      ),
      child: DropdownButton<DropdownModel>(
        value: _selectedValue,
        borderRadius: BorderRadius.circular(8),
        focusColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 5,
        ),
        underline: const SizedBox.shrink(),
        hint: Text(
          widget.hint ?? 'Select value',
          style: kSubTitleStyle.copyWith(
            color: AppColors.kGray,
            fontWeight: FontWeight.w400,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });

          widget.onChanged(value!);
        },
        items: widget.items.map(
              (e) {
            return DropdownMenuItem<DropdownModel>(
              value: e,
              child: Text(
                e.title,
                overflow: TextOverflow.ellipsis,
                style: kSubTitleStyle.copyWith(
                  color: AppColors.kPrimaryBlue,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          },
        ).toList(),
        isDense: true,
        isExpanded: false,
      ),
    );
  }
}
