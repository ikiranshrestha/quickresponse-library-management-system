abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs {
  //shared variables and methods that will be used through any viewmodel

}

abstract class BaseViewModelInputs {
  //get requests from view
  void start(); // will be called while init. of view model
  void dispose(); // will be called when viewmodel dies
}

abstract class BaseViewModelOutputs {
  //
}
