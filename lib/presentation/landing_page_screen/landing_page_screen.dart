import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:helpful_hive/core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/cardbox_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LandingPageScreen extends StatelessWidget {
  LandingPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController typehereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: 368.h,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 254.v,
                          width: 282.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTreatmentIllustration,
                                height: 244.v,
                                width: 262.h,
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(right: 80.h),
                                  decoration: AppDecoration.outlineBlack,
                                  child: _buildLearnmore(context),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 19.v),
                        SizedBox(
                          height: 3246.v,
                          width: 368.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              _buildColumnhead(context),
                              _buildColumncashicono(context),
                              _buildTestimonial(context),
                              _buildColumnheadfive(context)
                            ],
                          ),
                        ),
                        SizedBox(height: 48.v),
                        _buildColumnheadsix(context),
                        SizedBox(height: 88.v),
                        Text(
                          "About Us",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 4.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle19,
                          height: 103.v,
                          width: 108.h,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "HEALTH HIVE",
                          style: CustomTextStyles.titleSmallGray800,
                        ),
                        SizedBox(height: 12.v),
                        Container(
                          width: 282.h,
                          margin: EdgeInsets.only(
                            left: 45.h,
                            right: 39.h,
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
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildColumnhealthhiv(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "HEALTH HIVE",
        margin: EdgeInsets.only(left: 29.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(16.h, 20.v, 14.h, 11.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMusic,
          margin: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
          ),
        )
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildLearnmore(BuildContext context) {
    return CustomElevatedButton(
      height: 29.v,
      width: 188.h,
      text: "Learn More About Us",
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.bodyMediumTeal90001,
    );
  }

  /// Section Widget
  Widget _buildColumnhead(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 42.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "CONNECT OR DONATE",
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: 37.v),
            Padding(
              padding: EdgeInsets.only(
                left: 55.h,
                right: 50.h,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 77.v,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CardboxItemWidget();
                },
              ),
            ),
            SizedBox(height: 60.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncashicono(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 22.v,
              width: 13.h,
              decoration: BoxDecoration(
                color: appTheme.teal90001,
              ),
            ),
            SizedBox(height: 42.v),
            SizedBox(
              height: 48.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCashIcon1,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    alignment: Alignment.bottomLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCalendarIcon1,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    alignment: Alignment.topCenter,
                  )
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "Easy donations",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 6.v),
            Container(
              width: 313.h,
              margin: EdgeInsets.only(
                left: 30.h,
                right: 23.h,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet velit orci, morbi sociis feugiat eros quam. Fermentum proin faucibus egestas ac gravida nulla montes.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeGray500.copyWith(
                  height: 1.25,
                ),
              ),
            ),
            SizedBox(height: 29.v),
            Container(
              width: 368.h,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  SizedBox(height: 28.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgDoctorIcon1,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "NGO Professionals",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 313.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet velit orci, morbi sociis feugiat eros quam. Fermentum proin faucibus egestas ac gravida nulla montes.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeGray500.copyWith(
                        height: 1.25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 29.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewall(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 160.h,
      text: "View all testimonials",
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.bodyMediumAcmeTeal900,
    );
  }

  /// Section Widget
  Widget _buildTestimonial(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 92.v),
        padding: EdgeInsets.symmetric(vertical: 47.v),
        decoration: AppDecoration.fillIndigo,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Testimonial",
              style: CustomTextStyles.displaySmallWhiteA700,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              width: 220.h,
              child: Text(
                "Get to know our happy volunteers!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleLargeWhiteA700,
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(
                left: 51.h,
                right: 44.h,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 49.v,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                },
              ),
            ),
            SizedBox(height: 56.v),
            _buildViewall(context),
            SizedBox(height: 55.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "“Lorem ipsum dolor sit amet, consectetur adipiscing elit. In turpis interdum lectus nibh at euismod.”",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray800.copyWith(
                        height: 1.11,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.indigo700,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 251.h,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      right: 35.h,
                    ),
                    child: Text(
                      "dr. Arimbi Aditya, Founder of ElderCare NGO",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeNobileGray800.copyWith(
                        height: 1.11,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisternow(BuildContext context) {
    return CustomElevatedButton(
      height: 38.v,
      text: "Register Now",
      margin: EdgeInsets.only(
        left: 32.h,
        right: 25.h,
      ),
      buttonStyle: CustomButtonStyles.outlineBlackTL19,
      buttonTextStyle: CustomTextStyles.bodyLargeTeal90001,
    );
  }

  /// Section Widget
  Widget _buildColumnheadfive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 58.h,
          vertical: 26.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup23,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ready to volunteer?",
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
            SizedBox(height: 9.v),
            _buildRegisternow(context)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypehere(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomTextFormField(
        controller: typehereController,
        hintText: "Type here",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSendmessage(BuildContext context) {
    return CustomElevatedButton(
      height: 38.v,
      width: 193.h,
      text: "Send Message",
      buttonStyle: CustomButtonStyles.outlineBlackTL19,
      buttonTextStyle: CustomTextStyles.bodyLargeTeal90001,
    );
  }

  /// Section Widget
  Widget _buildColumnheadsix(BuildContext context) {
    return Container(
      width: 368.h,
      padding: EdgeInsets.all(41.h),
      decoration: AppDecoration.fillIndigo,
      child: Column(
        children: [
          SizedBox(height: 15.v),
          Text(
            "Provide Feedback",
            style: CustomTextStyles.headlineSmallWhiteA700,
          ),
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Your Message",
                style: CustomTextStyles.titleLargeActorWhiteA700,
              ),
            ),
          ),
          SizedBox(height: 32.v),
          _buildTypehere(context),
          SizedBox(height: 35.v),
          _buildSendmessage(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnhealthhiv(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 145.h,
        right: 140.h,
        bottom: 55.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: SizedBox(
        width: 82.h,
        child: Text(
          "HEALTH HIVE\nest. 2024",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.labelLarge!.copyWith(
            height: 1.08,
          ),
        ),
      ),
    );
  }
}
