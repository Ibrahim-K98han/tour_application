import 'package:get/get.dart';
import 'package:tour_application/ui/views/auth/sign_in.dart';
import 'package:tour_application/ui/views/auth/sign_up.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';
import 'package:tour_application/ui/views/privacy_policy.dart';
import 'package:tour_application/ui/views/splash_screen.dart';
import 'package:tour_application/ui/views/user_form.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String signUP = '/sign-up-screen';
const String signIn = '/sign-in-screen';
const String userForm = '/user_form-screen';
const String privacy = '/privacy-policy-screen';

List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onbording, page: () => OnbordingScreen()),
  GetPage(name: signUP, page: () => SignUp()),
  GetPage(name: signIn, page: () => SignIn()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacy, page: () => PrivacyPolicy()),
];
