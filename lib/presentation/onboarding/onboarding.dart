import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/presentation/resources/assets_manager.dart';
import 'package:lms/presentation/resources/color_manager.dart';
import 'package:lms/presentation/resources/routes_manager.dart';
import 'package:lms/presentation/resources/strings_manager.dart';
import 'package:lms/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  List<SliderObject> _getSliderData() => [
        SliderObject(
            AppStrings.onBoardingTitle1.toString(),
            AppStrings.onBoardingSubtitle1.toString(),
            ImageAssets.onboardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubtitle2, ImageAssets.onboardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubtitle3, ImageAssets.onboardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubtitle4, ImageAssets.onboardingLogo4)
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.grey,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          //return OnBoardingPage
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.loginRoute);
                  },
                  child: Text(
                    AppStrings.skip,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.end,
                  ),
                )),
            // add layout for indicator and arrows
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //left Arrow
          Padding(
            padding: const EdgeInsets.all(AppPaddings.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.leftArrowIc,
                    color: ColorManager.white, height: AppSize.s10),
              ),
              onTap: () {
                //go to previous slide
                _pageController.animateToPage(_getPreviousIndex(),
                    duration:
                        const Duration(milliseconds: DurationConstant.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),

          //circle Indicator
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPaddings.p8),
                  child: _getProperCircle(i),
                ),
            ],
          ),

          //right arrow
          Padding(
            padding: const EdgeInsets.all(AppPaddings.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.rightArrowIc,
                    color: ColorManager.white, height: AppSize.s10),
              ),
              onTap: () {
                //go to next slide
                _pageController.animateToPage(_getNextIndex(),
                    duration:
                        const Duration(milliseconds: DurationConstant.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(
        ImageAssets.hollowCircleIc,
        color: ColorManager.darkPrimary,
        height: AppSize.s10,
      );
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIc,
          color: ColorManager.white, height: AppSize.s10);
    }
  }

  int _getPreviousIndex() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex =
          _list.length - 1; // infinite loopt to go to length of slider list
    }
    return _currentIndex;
  }

  int _getNextIndex() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0; // infinite loopt to go to first item inside the slider
    }
    return _currentIndex;
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s60),
        Padding(
          padding: const EdgeInsets.all(AppPaddings.p8),
          child: Text(
            _sliderObject.title.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPaddings.p8),
          child: Text(
            _sliderObject.subTitle.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(height: AppSize.s60),
        SvgPicture.asset(
          _sliderObject.image.toString(),
          height: AppSize.s250,
        )
        // Image.asset(ImageAssets.splashLogo),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:lms/presentation/resources/assets_manager.dart';
// import 'package:lms/presentation/resources/color_manager.dart';
// import 'package:lms/presentation/resources/strings_manager.dart';
// import 'package:lms/presentation/resources/values_manager.dart';

// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({Key? key}) : super(key: key);

//   @override
//   _OnBoardingViewState createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   late final List<SliderObject> _list = _getSliderData();
//   PageController _pageController = PageController(initialPage: 0);
//   int _currentIndex = 0;

//   List<SliderObject> _getSliderData() => [
//         SliderObject(AppStrings.onBoardingSubtitle1,
//             AppStrings.onBoardingSubtitle1, ImageAssets.onboardingLogo1),
//         SliderObject(AppStrings.onBoardingSubtitle2,
//             AppStrings.onBoardingSubtitle2, ImageAssets.onboardingLogo2),
//         SliderObject(AppStrings.onBoardingSubtitle3,
//             AppStrings.onBoardingSubtitle3, ImageAssets.onboardingLogo3),
//         SliderObject(AppStrings.onBoardingTitle4,
//             AppStrings.onBoardingSubtitle4, ImageAssets.onboardingLogo4)
//       ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.white,
//       appBar: AppBar(
//         backgroundColor: ColorManager.white,
//         elevation: AppSize.s1_5,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: ColorManager.white,
//           statusBarBrightness: Brightness.dark,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//       ),
//       body: PageView.builder(
//           controller: _pageController,
//           itemCount: _list.length,
//           onPageChanged: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           itemBuilder: (context, index) {
//             return OnBoardingPage(_list[index]);
//           }),
//       bottomSheet: Container(
//         color: ColorManager.white,
//         height: AppSize.s100,
//         child: Column(
//           children: [
//             Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     AppStrings.skip,
//                     textAlign: TextAlign.end,
//                   ),
//                 )),
//             // add layout for indicator and arrows
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OnBoardingPage extends StatelessWidget {
//   SliderObject _sliderObject;

//   OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(height: AppSize.s40),
//         Padding(
//           padding: const EdgeInsets.all(AppPaddings.p8),
//           child: Text(
//             _sliderObject.title,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.headline1,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(AppPaddings.p8),
//           child: Text(
//             _sliderObject.subTitle,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.subtitle1,
//           ),
//         ),
//         SizedBox(
//           height: AppSize.s60,
//         ),
//         SvgPicture.asset(_sliderObject.image)
//         // image widget
//       ],
//     );
//   }
// }

// class SliderObject {
//   late String title;
//   late String subTitle;
//   late String image;

//   SliderObject(this.title, this.subTitle, this.image);
// }
