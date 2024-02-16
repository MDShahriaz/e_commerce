import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/personalization/models/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to FireStore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      print('exception = ${e.toString()}');
      throw e.toString();
    } on FormatException catch (e) {
      print('exception = ${e.toString()}');
      throw e.toString();
    } on PlatformException catch (e) {
      print('exception = ${e.toString()}');
      throw e.toString();
    } catch (e) {
      print('exception = ${e.toString()}');
      throw 'Something went wrong. Please try again';
    }
  }
}
