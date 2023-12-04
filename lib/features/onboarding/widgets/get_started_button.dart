import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routes/routes.dart';
import 'package:doc_doc/core/theme/app_colors.dart';
import 'package:doc_doc/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 52.h),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
      child: Center(
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
