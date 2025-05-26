import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone/Utility/colors.dart';

class SignUpWidget extends StatelessWidget {
  SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget getTextField({required String hint}) {
      return TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
          filled: true,
          fillColor: AppColors.textFieldColor,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 52.h),
                Text(
                  "Sign Up To Survey App",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkTextColor,
                  ),
                ),
                SizedBox(height: 4.h),
                Wrap(
                  children: [
                    Text(
                      "Already Have an Account?",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightTextColor,
                      ),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                getTextField(hint: "Name"),
                SizedBox(height: 16.h),
                getTextField(hint: "Email"),
                SizedBox(height: 16.h),
                getTextField(hint: "Designation"),
                SizedBox(height: 16.h),
                getTextField(hint: "Password"),
                SizedBox(height: 16.h),
                getTextField(hint: "Password"),
                SizedBox(height: 16.h),
                getTextField(hint: "Staff ID"),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,

                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.purpleColor,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text("Create Account"),
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      "By Signing Up to our survey app you agree to our",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "terms & Conditions",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.purpleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
