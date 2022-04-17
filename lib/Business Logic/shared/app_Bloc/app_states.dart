abstract class AppStates {}

class AppStateInit extends AppStates {}

class AppStateLoading extends AppStates {}

class AppStateSuccess extends AppStates {}

class AppStateError extends AppStates {
  var error;
  AppStateError(this.error);
}

class AppLayoutChangBottomNavState extends AppStates {}

class ShowAddToCartItems extends AppStates {}

class CloseAddToCartItems extends AppStates {}
