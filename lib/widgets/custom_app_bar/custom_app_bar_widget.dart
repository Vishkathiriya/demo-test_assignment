import 'package:first_cry/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// this is a custom Appbar Widget, AppbarWidget is a horizontal bar that is displayed at the top of the screen. This is one of the main components of Scaffold widget. AppbarWidget includes the toolbar icons, title of screen, quick action buttons.
// To insert AppbarWidget into your app, you need scaffold() widget:
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget(
      {Key? key,
      this.appBarText,
      this.ontap,
      this.elevaTion,
      this.icon,
      this.textColor,
      this.actions,
      this.backText,
      this.leadingBackButton = true,
      this.color,
      this.islocationscreen = false})
      : super(key: key);
  final String? appBarText;
  final void Function()? ontap;
  final Color? color;
  final Color? textColor;
  final Widget? icon;
  final dynamic elevaTion;
  final List<Widget>? actions;
  final bool leadingBackButton;
  final Widget? backText;
  final bool islocationscreen;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // automaticallyImplyLeading: false,
      backgroundColor: color,
      leadingWidth: leadingBackButton ? 56.w : 200.w,
      leading: GestureDetector(
          onTap: ontap,
          child: leadingBackButton
              ? Padding(
                  padding: EdgeInsets.only(
                      top: islocationscreen ? 0.h : 15.h, bottom: 12.h),
                  child: icon,
                )
              : Row(
                  children: [icon!, SizedBox(width: 4.w), backText!],
                )),
      title: Text(
        appBarText ?? '',
        overflow: TextOverflow.clip,
        style: GoogleFonts.montserrat(
            color: AppStaticColors.whitecolor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ),
      actions: actions ?? [],
      centerTitle: true,
      elevation: 0,
    );
  }
}
