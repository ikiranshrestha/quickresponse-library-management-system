import 'dart:async';

import 'package:lms/domain/model.dart';
import 'package:lms/presentation/base/baseviewmodel.dart';
import 'package:lms/presentation/resources/assets_manager.dart';
import 'package:lms/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingviewModelInputs, OnBoardingviewModelOutputs {
//stream controller
  final StreamController _streamController =
      StreamController<SliderViewObject>();

  late final List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();

    //send this slider data to view
    _postDataToView();
  }

  @override
  int goNextSlide() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0; // infinite loopt to go to first item inside the slider
    }
    // _postDataToView();
    return _currentIndex;
  }

  @override
  int goPreviousSlide() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex =
          _list.length - 1; // infinite loopt to go to length of slider list
    }
    // _postDataToView();
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  //private functions
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

  _postDataToView() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

//input means requests to view model from view
abstract class OnBoardingviewModelInputs {
  void goNextSlide(); //goes next when right arrow is tapped or right swiped
  void goPreviousSlide(); //goes next when left arrow is tapped or left swiped
  void onPageChanged(int index); //

  Sink get inputSliderViewObject;
}

//output means data/ results sent to viewmodel to view
abstract class OnBoardingviewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  late SliderObject sliderObject;
  late int numbOfSlides;
  late int currentIndex;

  SliderViewObject(this.sliderObject, this.numbOfSlides, this.currentIndex);
}
