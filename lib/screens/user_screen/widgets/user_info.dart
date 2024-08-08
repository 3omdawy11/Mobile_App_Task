import 'package:flutter/material.dart';
import '../../../constants.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key, required this.name, required this.email, required this.address,
  });
  final String name;
  final String email;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoLine(question: 'Name', answer: name,),
        InfoLine(question: 'Email', answer: email),
        InfoLine(question: 'Address', answer: address),
      ],
    );
  }
}


class InfoLine extends StatelessWidget {
  const InfoLine({
    super.key, required this.question, required this.answer,
  });
  final String question;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$question: ', style: profileTextStyle,),
        Text(
          answer,
          style: profileTextStyle,
        ),
      ],
    );
  }
}
