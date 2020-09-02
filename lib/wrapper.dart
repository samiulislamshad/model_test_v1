import 'package:flutter/material.dart';
import 'package:model_test/Authenticate/Authenticate.dart';
import 'package:model_test/loginLayout.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //return either profile or login widget depending on user authentication
    return Authenticate(); //if authentication fails, return login layout else, return profile
  }
}
