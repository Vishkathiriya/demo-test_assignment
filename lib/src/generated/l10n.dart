// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get Donothaveanaccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'Donothaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullname {
    return Intl.message(
      'Full name',
      name: 'fullname',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyhaveanaccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyhaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signin {
    return Intl.message(
      'Sign in',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `PREMIUM BOUTIQUES `
  String get Premiumboutiques {
    return Intl.message(
      'PREMIUM BOUTIQUES ',
      name: 'Premiumboutiques',
      desc: '',
      args: [],
    );
  }

  /// `Dreamy Ruffles | Up To 14Y `
  String get ProductTitle1 {
    return Intl.message(
      'Dreamy Ruffles | Up To 14Y ',
      name: 'ProductTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Cute Couture | Up To 24M`
  String get ProductTitle2 {
    return Intl.message(
      'Cute Couture | Up To 24M',
      name: 'ProductTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Trendy Rainwear For Every Forecast | 2 - 14Y`
  String get ProductTitle3 {
    return Intl.message(
      'Trendy Rainwear For Every Forecast | 2 - 14Y',
      name: 'ProductTitle3',
      desc: '',
      args: [],
    );
  }

  /// ` Kid's Chill Zone | 2 - 14Y`
  String get ProductTitle4 {
    return Intl.message(
      ' Kid\'s Chill Zone | 2 - 14Y',
      name: 'ProductTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Style Safari | 2 - 14Y`
  String get ProductTitle5 {
    return Intl.message(
      'Style Safari | 2 - 14Y',
      name: 'ProductTitle5',
      desc: '',
      args: [],
    );
  }

  /// `Waves & Shells | Up To 14Y`
  String get ProductTitle6 {
    return Intl.message(
      'Waves & Shells | Up To 14Y',
      name: 'ProductTitle6',
      desc: '',
      args: [],
    );
  }

  /// `Shop Now`
  String get shopnow {
    return Intl.message(
      'Shop Now',
      name: 'shopnow',
      desc: '',
      args: [],
    );
  }

  /// `NEW TODAY`
  String get newtoday {
    return Intl.message(
      'NEW TODAY',
      name: 'newtoday',
      desc: '',
      args: [],
    );
  }

  /// `Soops, Shampoos& body wash`
  String get bathproduct1 {
    return Intl.message(
      'Soops, Shampoos& body wash',
      name: 'bathproduct1',
      desc: '',
      args: [],
    );
  }

  /// `Lotions, Oils & powders`
  String get bathproduct2 {
    return Intl.message(
      'Lotions, Oils & powders',
      name: 'bathproduct2',
      desc: '',
      args: [],
    );
  }

  /// `Baby Creams & oinatments`
  String get bathproduct3 {
    return Intl.message(
      'Baby Creams & oinatments',
      name: 'bathproduct3',
      desc: '',
      args: [],
    );
  }

  /// `Baby bathers & tubes`
  String get bathproduct4 {
    return Intl.message(
      'Baby bathers & tubes',
      name: 'bathproduct4',
      desc: '',
      args: [],
    );
  }

  /// `Bathing Accessories & product`
  String get bathproduct5 {
    return Intl.message(
      'Bathing Accessories & product',
      name: 'bathproduct5',
      desc: '',
      args: [],
    );
  }

  /// `Gromming Accessories & product`
  String get bathproduct6 {
    return Intl.message(
      'Gromming Accessories & product',
      name: 'bathproduct6',
      desc: '',
      args: [],
    );
  }

  /// `Bathtime & Accessories`
  String get bathproduct7 {
    return Intl.message(
      'Bathtime & Accessories',
      name: 'bathproduct7',
      desc: '',
      args: [],
    );
  }

  /// `Shop by Category`
  String get Shopbycategory {
    return Intl.message(
      'Shop by Category',
      name: 'Shopbycategory',
      desc: '',
      args: [],
    );
  }

  /// `Introducing Dremy Ruffles, a perfect blend of elegance and comfort! Made with premium quality fabric and delicately crafted with enticing ruffles, these fashion staples add a touch of glamour to your wardrobe. Whether you prefer solid colors or vibrant prints, Dremy Ruffles has got you covered`
  String get ptitle1 {
    return Intl.message(
      'Introducing Dremy Ruffles, a perfect blend of elegance and comfort! Made with premium quality fabric and delicately crafted with enticing ruffles, these fashion staples add a touch of glamour to your wardrobe. Whether you prefer solid colors or vibrant prints, Dremy Ruffles has got you covered',
      name: 'ptitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Cute Couture, where fashion meets comfort! Our collection of trendy yet comfy clothes is perfect for any occasion. From lounge sets to activewear, our clothing will make you feel and look great. Explore our latest designs and elevate your style effortlessly. Shop now and experience the best of both worlds!`
  String get ptitle2 {
    return Intl.message(
      'Welcome to Cute Couture, where fashion meets comfort! Our collection of trendy yet comfy clothes is perfect for any occasion. From lounge sets to activewear, our clothing will make you feel and look great. Explore our latest designs and elevate your style effortlessly. Shop now and experience the best of both worlds!',
      name: 'ptitle2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Cute Couture, where fashion meets comfort! Our collection of trendy yet comfy clothes is perfect for any occasion. From lounge sets to activewear, our clothing will make you feel and look great. Explore our latest designs and elevate your style effortlessly. Shop now and experience the best of both worlds!`
  String get ptitle3 {
    return Intl.message(
      'Welcome to Cute Couture, where fashion meets comfort! Our collection of trendy yet comfy clothes is perfect for any occasion. From lounge sets to activewear, our clothing will make you feel and look great. Explore our latest designs and elevate your style effortlessly. Shop now and experience the best of both worlds!',
      name: 'ptitle3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Kid's Chillzone! Our cool and comfy hangout spot is perfect for your little ones. With soft cushions and fun designs, your kids will love spending time here. Whether they want to read a book, play a game or just relax, Kid's Chillzone is the ultimate spot for them.`
  String get ptitle4 {
    return Intl.message(
      'Welcome to Kid\'s Chillzone! Our cool and comfy hangout spot is perfect for your little ones. With soft cushions and fun designs, your kids will love spending time here. Whether they want to read a book, play a game or just relax, Kid\'s Chillzone is the ultimate spot for them.',
      name: 'ptitle4',
      desc: '',
      args: [],
    );
  }

  /// `Discover the adventurous and chic side of fashion with Style Safari! Our collection features bold prints, vibrant colors, and unique textures that will take you on a journey through the wilds of style. From sleek animal prints to daring tribal patterns, our clothes are perfect for the fashion-savvy explorer who loves to stand out from the crowd. So why wait? Join the Style Safari today and let your wardrobe take you on an exciting fashion adventure!`
  String get ptitle5 {
    return Intl.message(
      'Discover the adventurous and chic side of fashion with Style Safari! Our collection features bold prints, vibrant colors, and unique textures that will take you on a journey through the wilds of style. From sleek animal prints to daring tribal patterns, our clothes are perfect for the fashion-savvy explorer who loves to stand out from the crowd. So why wait? Join the Style Safari today and let your wardrobe take you on an exciting fashion adventure!',
      name: 'ptitle5',
      desc: '',
      args: [],
    );
  }

  /// `Bring a slice of the beach to your home with our collection of waves and shells! These natural wonders are perfect for decorating your living room, bedroom, or any space in need of a relaxing touch. Each shell and wave is unique, making every piece a one-of-a-kind addition to your decor. Whether you're a beach lover or just looking for a tranquil accent, our Waves and Shells collection has something for everyone.`
  String get ptitle6 {
    return Intl.message(
      'Bring a slice of the beach to your home with our collection of waves and shells! These natural wonders are perfect for decorating your living room, bedroom, or any space in need of a relaxing touch. Each shell and wave is unique, making every piece a one-of-a-kind addition to your decor. Whether you\'re a beach lover or just looking for a tranquil accent, our Waves and Shells collection has something for everyone.',
      name: 'ptitle6',
      desc: '',
      args: [],
    );
  }

  /// `200`
  String get price1 {
    return Intl.message(
      '200',
      name: 'price1',
      desc: '',
      args: [],
    );
  }

  /// ` 2050`
  String get price2 {
    return Intl.message(
      ' 2050',
      name: 'price2',
      desc: '',
      args: [],
    );
  }

  /// `2030`
  String get price3 {
    return Intl.message(
      '2030',
      name: 'price3',
      desc: '',
      args: [],
    );
  }

  /// `2080`
  String get price4 {
    return Intl.message(
      '2080',
      name: 'price4',
      desc: '',
      args: [],
    );
  }

  /// `1500`
  String get price5 {
    return Intl.message(
      '1500',
      name: 'price5',
      desc: '',
      args: [],
    );
  }

  /// `3500`
  String get price6 {
    return Intl.message(
      '3500',
      name: 'price6',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to Logout?`
  String get logouttext {
    return Intl.message(
      'Are you sure you want to Logout?',
      name: 'logouttext',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `user-not-found`
  String get notfound {
    return Intl.message(
      'user-not-found',
      name: 'notfound',
      desc: '',
      args: [],
    );
  }

  /// `wrong-password`
  String get wrongpassword {
    return Intl.message(
      'wrong-password',
      name: 'wrongpassword',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get nouserfound {
    return Intl.message(
      'No user found for that email.',
      name: 'nouserfound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrongpasswordmsg {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrongpasswordmsg',
      desc: '',
      args: [],
    );
  }

  /// `User login successfully`
  String get loginsuccess {
    return Intl.message(
      'User login successfully',
      name: 'loginsuccess',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address`
  String get validEmail {
    return Intl.message(
      'Enter a valid email address',
      name: 'validEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters in length`
  String get validpassword {
    return Intl.message(
      'Password must be at least 6 characters in length',
      name: 'validpassword',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get filedrequired {
    return Intl.message(
      'This field is required',
      name: 'filedrequired',
      desc: '',
      args: [],
    );
  }

  /// `User Register Successfully `
  String get registersuccess {
    return Intl.message(
      'User Register Successfully ',
      name: 'registersuccess',
      desc: '',
      args: [],
    );
  }

  /// `Something Went to Wrong `
  String get somethingwrong {
    return Intl.message(
      'Something Went to Wrong ',
      name: 'somethingwrong',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Fullname`
  String get EnterFullName {
    return Intl.message(
      'Enter Your Fullname',
      name: 'EnterFullName',
      desc: '',
      args: [],
    );
  }

  /// `weak-password`
  String get Weakpassword {
    return Intl.message(
      'weak-password',
      name: 'Weakpassword',
      desc: '',
      args: [],
    );
  }

  /// `email-already-in-use`
  String get alredyuseemail {
    return Intl.message(
      'email-already-in-use',
      name: 'alredyuseemail',
      desc: '',
      args: [],
    );
  }

  /// `User logout successfully !`
  String get userLogout {
    return Intl.message(
      'User logout successfully !',
      name: 'userLogout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
