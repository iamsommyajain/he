import 'package:flutter/material.dart';
import 'package:helpful_hive/core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class CardboxItemWidget extends StatelessWidget {
  const CardboxItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.v,
      width: 233.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 262.v,
            width: 233.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 94.v,
              width: 160.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 37.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 24.v),
                          SizedBox(
                            width: 84.h,
                            child: Text(
                              "Become a volunteer",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeNobileTeal90001
                                  .copyWith(
                                height: 1.11,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  _buildButtonText(context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonText(BuildContext context) {
    return CustomElevatedButton(
      width: 160.h,
      text: "Learn More",
      buttonTextStyle: theme.textTheme.bodyLarge!,
      alignment: Alignment.bottomCenter,
    );
  }
}
