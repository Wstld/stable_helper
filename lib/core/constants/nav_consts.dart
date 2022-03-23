enum Pages {
  login,
  home,
  splash,
  addHorse,
  stableChoreDetails,
  userProfileSettings,
  myHorses,
}

extension PageExtensions on Pages {
  String get routeName {
    switch (this) {
      case Pages.login:
        return '/login';
      case Pages.home:
        return '/home';
      case Pages.splash:
        return '/splash';
      case Pages.addHorse:
        return '/add_horse';
      case Pages.stableChoreDetails:
        return '/stable_chore_details';
      case Pages.userProfileSettings:
        return '/user_profile_settings';
      case Pages.myHorses:
        return '/my_horses';
    }
  }

  String get displayName {
    switch (this) {
      case Pages.login:
        return 'Login';
      case Pages.home:
        return 'Home';
      case Pages.splash:
        return 'Splash';
      case Pages.addHorse:
        return 'Add Horse';
      case Pages.stableChoreDetails:
        return 'Stable Chore';
      case Pages.userProfileSettings:
        return 'Profile Settings';
      case Pages.myHorses:
        return 'My Horses';
    }
  }
}
