import 'package:car_rent_app/presentaion/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff2c2b34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/onboarding.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Premium Cars, \nEnjoy the luxury",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Premium and prestige car daily rental. \nExperience the thrill at a lower price.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 54,
                    width: 318,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => CarListScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white
                        ),
                        child: const Text(
                          "Let\'s Go",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}