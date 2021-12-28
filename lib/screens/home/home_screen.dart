import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xFF640707),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage("assets/images/washi.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "新・人狼ゲーム",
                      style: GoogleFonts.sawarabiMincho(
                          textStyle: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 50.h,
                      child: Image(
                        image: AssetImage("assets/images/wolficononly.png"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
