import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gcm/app/core/theme/app_color.dart';
import 'package:gcm/app/core/theme/app_styles.dart';

class CalculateAttendanceSheet extends StatelessWidget {
  const CalculateAttendanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.85,
      widthFactor: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kBodyHP,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How Do We Calculate Attendance!',
              style: kSecondaryHeading3Style.copyWith(
                fontSize: 16,
                color: AppColors.kPrimaryBlue,
              ),
            ),
            Gap(12),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '''
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut nisi nec tortor ullamcorper tincidunt. Quisque aliquet, justo nec congue porttitor, arcu est malesuada urna, sed fermentum lectus sapien a neque. Integer bibendum metus id libero aliquet, ac auctor nulla interdum. Proin vitae lacus interdum, porttitor velit ut, ultricies ipsum. Donec tristique elit nec arcu facilisis, ut vehicula mi tempus.
          
          Curabitur vestibulum efficitur mauris, at ultricies metus vestibulum vel. Nam quis urna vel metus euismod tincidunt. Pellentesque sed odio at magna hendrerit eleifend at id orci. Integer venenatis vehicula nibh, quis aliquet lorem accumsan sed. Suspendisse potenti. Aliquam erat volutpat. Ut ut massa vel elit tempus interdum.
          
          Fusce gravida mi sed eros molestie, sed consectetur massa viverra. Proin vehicula volutpat orci, eget sagittis mauris rhoncus vel. Etiam varius orci sed tortor tempor fermentum. Cras id risus sed purus iaculis finibus. Nulla facilisi. Maecenas convallis nisl nec dui tempus, a condimentum magna molestie.
          
          Morbi condimentum, lectus vitae fermentum dictum, ligula sapien gravida tortor, at eleifend dolor urna ut elit. Integer aliquet magna in massa gravida dapibus. Ut semper luctus turpis, nec dapibus sapien convallis ut. Donec ornare felis eget fringilla malesuada. Mauris posuere vehicula nisi, id convallis magna ultricies ut.
          ''',
                  style: kSecondaryLabelStyle.copyWith(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Gap(12),
          ],
        ),
      ),
    );
  }
}
