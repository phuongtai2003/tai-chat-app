import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:tai_chat_app/models/chat_user/request/add_chat_user_request.dart';

@lazySingleton
class DataRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  DataRepository();

  Future<UserCredential> register(
      {required String email, required String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future<UserCredential> login(
      {required String email, required String password}) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future createUser({
    required AddChatUserRequest newUser,
  }) async {
    return await _firestore.collection('users').add(newUser.toMap());
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCurrentUserData() async {
    return await _firestore
        .collection('users')
        .where('email', isEqualTo: _firebaseAuth.currentUser!.email)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUsers() async {
    return await _firestore
        .collection('users')
        .where('email', isNotEqualTo: _firebaseAuth.currentUser!.email)
        .get();
  }
}
