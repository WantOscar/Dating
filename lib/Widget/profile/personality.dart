import 'package:dating/Widget/profile/hobby_container.dart';
import 'package:flutter/material.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Text('성격'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            spacing: 5,
            runSpacing: 5,
            children: [
              HobbyContainer(
                text: '털털한',
              ),
              HobbyContainer(
                text: '기모띠',
              ),
              HobbyContainer(
                text: '자유로운',
              ),
              HobbyContainer(
                text: '유쾌한',
              ),
              HobbyContainer(
                text: '대담한',
              ),
              HobbyContainer(
                text: '보수적인',
              ),
              HobbyContainer(
                text: '재밌는',
              ),
              HobbyContainer(
                text: '호전적인',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
