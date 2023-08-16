// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddChatUserRequest {
  final String name;
  final String email;

  AddChatUserRequest({
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }

  factory AddChatUserRequest.fromMap(Map<String, dynamic> map) {
    return AddChatUserRequest(
      name: map['name'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AddChatUserRequest.fromJson(String source) =>
      AddChatUserRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
