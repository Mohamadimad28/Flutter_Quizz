 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/screens/quizz_screen.dart';
import 'package:quizz_app/ui/shared/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 100.0,
            horizontal: 12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(80.0),
                  child: Center(
                    child: Text(
                      "أختبر نفسك في قانون العمل الفلسطيني",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: RawMaterialButton(
                    onPressed: () {
                      //Navigating the the Quizz Screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizzScreen(),
                          ));
                    },
                    shape: const StadiumBorder(),
                    fillColor: AppColor.secondaryColor,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "ابدأ الاختبار الان",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "تم التطوير بواسطة ❤ محمد عابد ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
