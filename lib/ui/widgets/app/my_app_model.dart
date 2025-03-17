import 'package:themoviedb/domain/data_providers/session_data_provider.dart';

class MyAppModel {
  final _sessiondataProvider = SessionDataProvider();
  var _isAuth = false;
  bool get isAuth => _isAuth;

  Future<void> checkAuth() async {
    final sessionId = await _sessiondataProvider.getSessionId();
    _isAuth = sessionId != null;
  }
}