enum Pages { login, home }

extension PageExtensions on Pages {
  String get routeName {
    switch (this) {
      case Pages.login:
        return '/login';
      case Pages.home:
        return '/home';
    }
  }

  String get displayName {
    switch (this) {
      case Pages.login:
        return 'Login';
      case Pages.home:
        return 'Home';
    }
  }
}
