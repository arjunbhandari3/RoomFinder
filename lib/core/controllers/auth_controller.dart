import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:roomfinder/models/user_model.dart';
import 'package:roomfinder/core/services/user_services.dart';
import 'package:roomfinder/views/login_view.dart';
import 'package:roomfinder/views/root_view.dart';

class AuthController extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;

  String email, password, name;

  Rx<User> _user = Rx<User>();

  String get user => _user.value?.email;
  User setUser(User user) => _user.value = user;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  void googleSignInMethod() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      print(googleUser);
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      await _auth.signInWithCredential(credential).then((user) {
        saveUser(user);
        Get.offAll(RootView());
      });
    } catch (e) {
      print(e.message);
      Get.snackbar(
        "Error",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(
      UserModel(
        userId: user.user.uid,
        email: user.user.email,
        name: name == null ? user.user.displayName : name,
        pic: user.user.photoURL ?? "assets/images/person.png",
        phone: user.user.phoneNumber ?? '0',
      ),
    );
  }

  void sendEmailVerication(user) async {
    await user.sendEmailVerification();
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Get.offAll(LoginView());
    } catch (e) {
      print(e);
      Get.snackbar(
        "Error",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
