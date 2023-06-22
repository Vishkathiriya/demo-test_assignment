import 'package:first_cry/core/dimens/sizedbox.dart';
import 'package:first_cry/core/styles/app_colors.dart';
import 'package:first_cry/core/styles/app_text.dart';
import 'package:first_cry/core/styles/app_text_styles.dart';
import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:first_cry/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:first_cry/widgets/remove_scroll_shadow/remove_scroll_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen(
      {super.key, this.product, this.productIndex, this.productTitle});
  final int? productIndex;
  final List<Widget>? product;
  final List<String>? productTitle;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String>? productSubTitle = [
    S.current.ptitle1,
    S.current.ptitle2,
    S.current.ptitle3,
    S.current.ptitle4,
    S.current.ptitle5,
    S.current.ptitle6,
  ];
  List<String>? productpriceTitle = [
    S.current.price1,
    S.current.price2,
    S.current.price3,
    S.current.price4,
    S.current.price5,
    S.current.price6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        ontap: () {
          Navigator.pop(context);
        },
        appBarText: "Product",
        color: AppStaticColors.eyeGradienttop,
        icon: const Icon(
          Icons.arrow_back_ios_new,
          size: Dimens.d20,
        ),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildProductImage(widget.productIndex),
              buildsizedbox(Dimens.d20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
                child: Column(
                  children: [
                    _buildproductTitle(
                        widget.productTitle![widget.productIndex!]),
                    buildsizedbox(Dimens.d10),
                    _buildproductPriceTitle(
                        " \$${productpriceTitle![widget.productIndex!]}"),
                    buildsizedbox(Dimens.d10),
                    _buildproductSubTitle(
                        productSubTitle![widget.productIndex!]),
                    buildsizedbox(Dimens.d10),
                    _buildproductSubTitle(
                        productSubTitle![widget.productIndex!]),
                    buildsizedbox(Dimens.d10),
                    buildsizedbox(Dimens.d10),
                    _buildproductSubTitle(
                        productSubTitle![widget.productIndex!])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildProductImage(int? productIndex) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(Dimens.d25.r)),
      height: MediaQuery.of(context).size.height / Dimens.d3,
      width: double.infinity,
      child: widget.product![productIndex!],
    );
  }

  Row _buildproductTitle(String title) {
    return Row(
      children: [
        Flexible(
          child: AppText(
              maxLines: 2,
              text: title,
              textStyle: AppTextStyles.size20WithSemiBold
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
              textStyle: AppTextStyles.size16WithMedium
                  .copyWith(color: AppStaticColors.greaytText)),
        ),
      ],
    );
  }

  Row _buildproductPriceTitle(String title) {
    return Row(
      children: [
        Flexible(
          child: AppText(
              text: title,
              textStyle: AppTextStyles.size20WithMedium
                  .copyWith(color: AppStaticColors.greaytText)),
        ),
      ],
    );
  }
}
