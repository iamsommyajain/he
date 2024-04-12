import 'package:flutter/material.dart';
import 'package:helpful_hive/core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class ColumnItemWidget extends StatelessWidget {
  const ColumnItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23,
            height: 153.v,
            width: 249.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 31.v,
            width: 160.h,
            text: "Find NGOs",
            buttonStyle: CustomButtonStyles.outlineBlackTL15,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 7.v)
        ],
      ),
    );
  }
}
