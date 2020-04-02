import 'package:fluttertp/Models/User.dart';
import 'package:scoped_model/scoped_model.dart';

mixin UserModel on Model {
  User _authenticatedUser;

  User get user {
    return _authenticatedUser;
  }

  void getUsers() {
 
  }

}
