import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/business_logic/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/constants.dart';
import 'package:mobile_app_task/screens/home_screen/widgets/social_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              const ClipRRect(
                borderRadius: welcomeBorders,
                child: Image(
                  width: double.infinity,
                  image: AssetImage(
                    'assets/welcoming_pic.png',
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'eConnect',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    FontAwesomeIcons.copyright,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Text(
                'Your voice matters - reach us out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              const SocialIcons(),
            ],
          ),
        );
      },
    );
  }
}
