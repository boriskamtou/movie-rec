import 'package:flutter/material.dart';
import 'package:movie_recommandation/core/constants.dart';
import 'package:movie_recommandation/core/widgets/primary_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key? key,
    required this.nextPage,
    required this.previousPage,
  }) : super(key: key);

  final VoidCallback nextPage;
  final VoidCallback previousPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's find a movie",
              style: Theme.of(context).textTheme.headline5,
            ),
            const Spacer(),
            Image.asset(
              'assets/images/mov.png',
              width: 200,
            ),
            const Spacer(),
            PrimaryButton(onPressed: nextPage, text: 'Get Started'),
            const SizedBox(
              height: kMediumSpacing,
            )
          ],
        ),
      ),
    );
  }
}
