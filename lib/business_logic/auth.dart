import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Auth{
  final box = GetStorage();

  Future registeration(String emailAddress, String password, context) async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailAddress, password: password
      );
      var authCredential = userCredential.user;
      if(authCredential!.uid.isNotEmpty){
        Fluttertoast.showToast(
            msg: 'This is Center Short Toast');
        box.write('uid', authCredential.uid);
        Get.to(usreForm);
      }else{
        print('sign up failed');
      }
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        Fluttertoast.showToast(
            msg: 'The password provided is too weak');
      }else if(e.code == 'email-already-in-use'){
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    }
  }
}