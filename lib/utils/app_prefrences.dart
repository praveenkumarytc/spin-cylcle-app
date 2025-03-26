import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  storeSessionId( sessionId) async{
    SharedPreferences  prefs = await SharedPreferences.getInstance();
    prefs.setString("sessionId", sessionId);
  }
    Future <String?> getSessionId( ) async{
    SharedPreferences  prefs = await SharedPreferences.getInstance();
     return prefs.getString("sessionId");
  }
}