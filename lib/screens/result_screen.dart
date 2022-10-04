import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/screens/main_menu.dart';
import 'package:quizz_app/ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "ممتاز تم الانتهاء من الاختبار ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              "نتيجة الاختبار هي : ",
              style: TextStyle(color: Colors.black, fontSize: 34.0),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}/80",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainMenu(),
                  ));
            },
            shape: const StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: const EdgeInsets.all(18.0),
            child: const Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "محاولة مرة اخرى ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
