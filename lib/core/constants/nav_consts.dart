enum Pages { login, home, splash, addHorse, stableChoreDetails }

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
        return 'Stable chore';
    }
  }
}
