import 'package:becbro/views/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var token ;
  @override
  void initState() {
    super.initState();
    getTokenFromSF();
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: LoginScreen(),
      title: new Text('Becbro',style: TextStyle( fontWeight: FontWeight.bold,
          fontSize: 39.0 ),),
      image: new Image.asset('images/logo.jpg'),
      backgroundColor:Colors.blue[300],
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red,
      //gradientBackground: new LinearGradient(colors: [ Colors.pinkAccent, Colors.blueAccent], begin: Alignment.topLeft, end: Alignment.bottomRight),
      loadingText: Text('WELCOME' ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20.0),),
    );

  }

  /// to check if the user is doing login before
  getHomePage()  {
    // if (token == null) {
    //   return AdvertisementsScreen();
    // } else {
    //   return LoginScreen();
    // }
  }


  /// to get token value
  getTokenFromSF() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String key = 'token';
    final String tokenValue = await prefs.get(key) ?? "";
    token = tokenValue;
  }
}
