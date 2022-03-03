enum Pages { login, home, splash }

extension PageExtensions on Pages {
  String get routeName {
    switch (this) {
      case Pages.login:
        return '/login';
      case Pages.home:
        return '/home';
      case Pages.splash:
        return '/splash';
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
    }
  }
}
