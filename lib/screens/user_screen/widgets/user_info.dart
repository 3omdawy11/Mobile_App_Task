import 'package:flutter/material.dart';
import '../../../constants.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoLine(question: 'Name', answer: 'Mohamed Emad',),
        InfoLine(question: 'Email', answer: 'mohamedzaky@email.com'),
        InfoLine(question: 'Address', answer: 'Cairo, Egypt'),
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
