import 'package:flutter/material.dart';
import 'package:traverse/misc/colors.dart';
import 'package:traverse/pages/login_page.dart';
import 'package:traverse/widgets/app_large_text.dart';
import 'package:traverse/widgets/app_text.dart';
import 'package:traverse/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List starttext = ["Trips", "Hike", "Travel"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  // ignore: prefer_interpolation_to_compose_strings
                  "img/" + images[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: starttext[index]),
                      const AppText(
                        text: "Mountain",
                        size: 30,
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes gives you an incredible sense of freedom along with endurance test",
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ResponsiveButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.3),
                      ),
                    );
                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
