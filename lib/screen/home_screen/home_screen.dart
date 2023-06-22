import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_cry/core/dimens/sizedbox.dart';
import 'package:first_cry/core/styles/app_colors.dart';
import 'package:first_cry/core/styles/app_text.dart';
import 'package:first_cry/core/styles/app_text_styles.dart';
import 'package:first_cry/helper/services/auth.dart';
import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/resource/generated/assets.gen.dart';
import 'package:first_cry/screen/product_screen/product_screen.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:first_cry/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:first_cry/widgets/custom_app_button/custom_app_button_widget.dart';
import 'package:first_cry/widgets/remove_scroll_shadow/remove_scroll_shadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget>? imageSliders = [
    Assets.images.png.slider1.image(fit: BoxFit.cover),
    Assets.images.jpg.slider1.image(fit: BoxFit.cover),
    Assets.images.jpg.slider2.image(fit: BoxFit.cover),
    Assets.images.jpg.slider3.image(fit: BoxFit.cover),
    Assets.images.jpg.slider4.image(fit: BoxFit.cover)
  ];
  List<Widget>? productList = [
    Assets.images.jpg.product1.image(fit: BoxFit.cover, height: Dimens.d100.h),
    Assets.images.jpg.product2.image(fit: BoxFit.cover, height: Dimens.d100.h),
    Assets.images.jpg.product3.image(fit: BoxFit.cover, height: Dimens.d100.h),
    Assets.images.jpg.product4.image(fit: BoxFit.cover, height: Dimens.d100.h),
    Assets.images.jpg.product5.image(fit: BoxFit.cover, height: Dimens.d100.h),
    Assets.images.jpg.product6.image(fit: BoxFit.cover, height: Dimens.d100.h)
  ];

  List<String>? productTitle = [
    S.current.ProductTitle1,
    S.current.ProductTitle2,
    S.current.ProductTitle3,
    S.current.ProductTitle4,
    S.current.ProductTitle5,
    S.current.ProductTitle6
  ];
  List<Widget>? bathProductList = [
    Assets.images.jpg.bath1.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath2.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath3.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath4.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath5.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath6.image(fit: BoxFit.cover, height: Dimens.d110.h),
    Assets.images.jpg.bath7.image(fit: BoxFit.cover, height: Dimens.d110.h)
  ];
  List<String>? bathProductTitle = [
    S.current.bathproduct1,
    S.current.bathproduct3,
    S.current.bathproduct4,
    S.current.bathproduct6,
    S.current.bathproduct5,
    S.current.bathproduct7,
    S.current.bathproduct2,
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        drawer: _buildDrawer(context),
        appBar: AppbarWidget(
          icon: GestureDetector(
              onTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              child: Assets.images.png.menu.image()),
          color: AppStaticColors.eyeGradienttop,
          leadingBackButton: true,
          appBarText: 'Home',
        ),
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildsizedbox(Dimens.d10),
                _buildcarouselslider(),
                buildsizedbox(Dimens.d20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
                  child: Column(
                    children: [
                      _buildTitle(S.current.Shopbycategory),
                      buildsizedbox(Dimens.d10),
                      _buildGridviewProduct(),
                      buildsizedbox(Dimens.d10),
                      _buildTitle(S.current.Premiumboutiques),
                      buildsizedbox(Dimens.d12),
                      _buildHorizontalProduct(),
                      _buildProductTitleimg(Assets.images.jpg.bathproduct
                          .image(fit: BoxFit.cover, height: Dimens.d50)),
                      buildsizedbox(Dimens.d20),
                      _buildbathProduct(),
                      _buildProductTitleimg(Assets.images.jpg.womencare
                          .image(fit: BoxFit.cover, height: Dimens.d50)),
                      buildsizedbox(Dimens.d20),
                      _buildWomenCareProduct()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildcarouselslider() {
    return Container(
      color: AppStaticColors.grayboxcolor,
      child: CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            autoPlay: true,
            height: Dimens.d200.h,
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            viewportFraction: 1),
      ),
    );
  }

  Row _buildTitle(String title) {
    return Row(
      children: [
        AppText(
            text: title,
            textStyle: AppTextStyles.size18WithSemiBold
                .copyWith(color: AppStaticColors.greaytText)),
      ],
    );
  }

  Row _buildproductTitle(String title) {
    return Row(
      children: [
        Flexible(
          child: AppText(
              maxLines: 2,
              text: title,
              textStyle: AppTextStyles.size12WithSemiBold
                  .copyWith(color: AppStaticColors.black)),
        ),
      ],
    );
  }

  Row _buildGridproductTitle(String title) {
    return Row(
      children: [
        Flexible(
          child: AppText(
              textCenter: true,
              maxLines: 1,
              text: title,
              textStyle: AppTextStyles.size12WithSemiBold
                  .copyWith(color: AppStaticColors.black)),
        ),
      ],
    );
  }

  Row _buildproductSubTitle(String title) {
    return Row(
      children: [
        Flexible(
          child: AppText(
              text: title,
              textStyle: AppTextStyles.size10WithMedium
                  .copyWith(color: AppStaticColors.textcolorred)),
        ),
      ],
    );
  }

  _buildProductTitleimg(dynamic image) {
    return image;
  }

  _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: AppStaticColors.whitecolor,
      width: MediaQuery.of(context).size.width / 1.32.w,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 18.h, left: 20.w, right: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.images.png.firstcry.image(height: Dimens.d100.h),
                      buildsizedbox(Dimens.d25),
                      Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              height: Dimens.d70.h,
                              decoration: BoxDecoration(
                                  color: AppStaticColors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      FirebaseAuth
                                          .instance.currentUser!.photoURL
                                          .toString(),
                                    ),
                                  )),
                            ),
                            SizedBox(width: 16.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: FirebaseAuth
                                        .instance.currentUser!.displayName
                                        .toString()
                                      ..toUpperCase(),
                                    textStyle: AppTextStyles.size18WithSemiBold,
                                  ),
                                  AppText(
                                    maxLines: 2,
                                    text: FirebaseAuth
                                        .instance.currentUser!.email
                                        .toString(),
                                    textStyle: AppTextStyles.size16WithSemiBold
                                        .copyWith(
                                            color: AppStaticColors.greaytText),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      buildsizedbox(
                          MediaQuery.of(context).size.height / Dimens.d2),
                      AppButton(
                          buttonText: S.current.Logout,
                          onpressed: () {
                            showLogoutDailog(context);
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showLogoutDailog(context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return Theme(
              data: ThemeData.dark(),
              child: CupertinoAlertDialog(
                title: AppText(text: S.current.logouttext),
                actions: [
                  CupertinoDialogAction(
                    onPressed: () async {
                      await _auth.signOut(context);
                    },
                    isDefaultAction: true,
                    isDestructiveAction: true,
                    child: AppText(text: S.current.yes),
                  ),
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: false,
                    isDestructiveAction: false,
                    child: AppText(text: S.current.no),
                  )
                ],
              ));
        });
  }

  _buildGridviewProduct() {
    return SizedBox(
        child: GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: productList?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: Dimens.d20,
        mainAxisSpacing: Dimens.d10,
        childAspectRatio: 0.90,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppStaticColors.whitecolor,
                boxShadow: [
                  BoxShadow(
                      color: AppStaticColors.black.withOpacity(0.2),
                      offset: const Offset(1.0, 0.0),
                      spreadRadius: 2,
                      blurRadius: 1.5)
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ProductScreen(
                        product: productList,
                        productIndex: index,
                        productTitle: productTitle,
                      );
                    },
                  ));
                },
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.d10)),
                    height: Dimens.d168.h,
                    child: productList![index],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildGridproductTitle(productTitle![index]),
                  ),
                ]),
              ),
            )
          ],
        );
      },
    ));
  }

  _buildHorizontalProduct() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / Dimens.d4,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: productList?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: Dimens.d130.w,
                child: Padding(
                  padding: EdgeInsets.only(right: Dimens.d15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppStaticColors.grayboxcolor,
                            borderRadius: BorderRadius.circular(Dimens.d10)),
                        child: Padding(
                          padding: const EdgeInsets.all(Dimens.d12),
                          child: Column(
                            children: [
                              productList![index],
                              SizedBox(height: Dimens.d10.h),
                              _buildproductTitle(productTitle![index]),
                              SizedBox(height: Dimens.d5.h),
                              _buildproductSubTitle(S.current.newtoday)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  _buildbathProduct() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / Dimens.d4,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: bathProductList?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: Dimens.d130.w,
                child: Padding(
                  padding: EdgeInsets.only(right: Dimens.d15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppStaticColors.grayboxcolor,
                            borderRadius: BorderRadius.circular(Dimens.d10)),
                        child: Padding(
                          padding: const EdgeInsets.all(Dimens.d12),
                          child: Column(
                            children: [
                              bathProductList![index],
                              SizedBox(height: Dimens.d10.h),
                              _buildproductTitle(bathProductTitle![index]),
                              SizedBox(height: Dimens.d5.h),
                              _buildproductSubTitle(S.current.newtoday)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  _buildWomenCareProduct() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / Dimens.d4,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: bathProductList?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: Dimens.d130.w,
                child: Padding(
                  padding: EdgeInsets.only(right: Dimens.d15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppStaticColors.grayboxcolor,
                            borderRadius: BorderRadius.circular(Dimens.d10)),
                        child: Padding(
                          padding: const EdgeInsets.all(Dimens.d12),
                          child: Column(
                            children: [
                              bathProductList![index],
                              SizedBox(height: Dimens.d10.h),
                              _buildproductTitle(bathProductTitle![index]),
                              SizedBox(height: Dimens.d5.h),
                              _buildproductSubTitle(S.current.newtoday)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
