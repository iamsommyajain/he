import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:helpful_hive/core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/column_item_widget.dart';

class VolunteerPageScreen extends StatelessWidget {
  const VolunteerPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 67.v),
            child: SizedBox(
              height: 1396.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUiAboutUsCard,
                    height: 244.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 31.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderTL50,
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup7,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 21.v),
                          Text(
                            "Volunteer",
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "Serve the society.",
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                          SizedBox(height: 38.v),
                          _buildColumn(context),
                          SizedBox(height: 84.v),
                          SizedBox(
                            height: 28.v,
                            width: 111.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 10.h,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "Book Now",
                                      style: CustomTextStyles
                                          .bodyMediumAclonicaWhiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "About Us",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle19,
                            height: 103.v,
                            width: 108.h,
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "HEALTH HIVE",
                            style: CustomTextStyles.titleSmallGray800,
                          ),
                          SizedBox(height: 31.v),
                          Container(
                            width: 282.h,
                            margin: EdgeInsets.only(
                              left: 46.h,
                              right: 45.h,
                            ),
                            child: Text(
                              "We, at Health Hive, wish to provide a centralised platform for NGOs, students, volunteers and other social initiatives to serve the society",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeNobileBlack900
                                  .copyWith(
                                height: 1.25,
                              ),
                            ),
                          ),
                          _buildFooter(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLogoDermamitra,
        margin: EdgeInsets.only(
          left: 9.h,
          top: 1.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "HEALTH HIVE",
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(20.h, 19.v, 16.h, 10.v),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgProfile,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 8.v,
            right: 36.h,
          ),
        )
      ],
      styleType: Style.bgShadow_1,
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 46.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ColumnItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 130.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 58.v),
          Container(
            width: 107.h,
            margin: EdgeInsets.only(left: 5.h),
            child: Text(
              "GOOD DEED GRID\nest. 2024",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.08,
              ),
            ),
          )
        ],
      ),
    );
  }
}
