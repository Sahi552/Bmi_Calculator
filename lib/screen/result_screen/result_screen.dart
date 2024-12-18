import 'package:bmi_calc/res/asset.dart';
import 'package:bmi_calc/res/util.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Appstyle.background,
        appBar: AppBar(),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.44,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(Asset.boy)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: width * 0.44,
                      height: 250,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Appstyle.title,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                            BoxShadow(
                              offset: Offset(-2, -2),
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          border: Border.all(color: Appstyle.color2, width: 5)),
                      child: Center(
                          child: Text(
                        "80",
                        style: Appstyle.headLine01,
                      )),
                    ),
                    Text(
                      "You are over weight!",
                      style: Appstyle.label,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: width * 0.44,
                      height: 250,
                    ),
                    Container(
                      width: width * 0.44,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Asset.girl)),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
