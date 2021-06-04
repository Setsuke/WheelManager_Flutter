import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/model/appbar_widget.dart';
import 'package:flutter_application_wheelmanager/model/profile_widget.dart';
import 'package:flutter_application_wheelmanager/model/textfield_widget.dart';
import 'package:flutter_application_wheelmanager/model/user.dart';
import 'package:flutter_application_wheelmanager/model/user_preferences.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context)=> Scaffold(

    appBar: buildAppBar(context),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal:32),
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height:30),
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit:true,
          onClicked:() async{},
        ),
        const SizedBox(height: 25),
        TextFieldWidget(
          label: 'Full Name',
          text: user.name,
          onChanged: (name) {},
        ),
        const SizedBox(height: 25),
        TextFieldWidget(
          label: 'Email',
          text: user.email,
          onChanged: (email) {},
        ),
        const SizedBox(height: 25),
        TextFieldWidget(
          label: 'About',
          text: user.about,
          maxLines: 5,
          onChanged: (about) {},
        ),
      ],
      )
  );
}


