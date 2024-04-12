import 'package:flutter/material.dart';
import 'package:helpful_hive/core/app_export.dart';
// ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 36.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sarika",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 226.h,
            margin: EdgeInsets.only(right: 5.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque odio tortor tristique ornare turpis eu blandit ultrices quam. Ridiculus ipsum morbi tellus consectetur. ",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                  TextSpan(
                    text: "View more.",
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20.v)
        ],
      ),
    );
  }
}
