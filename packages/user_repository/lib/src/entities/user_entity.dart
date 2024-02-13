import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userid;
  final String email;
  final String name;

  const MyUserEntity({
    required this.userid,
    required this.email,
    required this.name,
  });
  Map<String, Object?> toDocument() {
    return {
      'userid': userid,
      'email': email,
      'name': name,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userid: doc['userid'],
      email: doc['email'],
      name: doc['name'],
    );
  }

  @override
  List<Object?> get props => [userid, email, name];
}
