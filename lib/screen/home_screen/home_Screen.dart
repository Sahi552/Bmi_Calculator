import 'package:bmi_calc/res/asset.dart';
import 'package:bmi_calc/res/util.dart';
import 'package:bmi_calc/screen/home_screen/container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appstyle.background,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              //title
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                    ]),
                child: Text(
                  'BMI CALCULATOR',
                  style: Appstyle.headLine01,
                ),
              ),
              const SizedBox(height: 20),
              //logo
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Asset.logo)),
                    borderRadius: BorderRadius.circular(50),
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
                    ]),
              ),
              const SizedBox(height: 20),
              //height
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
                              DecorationImage(image: AssetImage(Asset.height)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: width * 0.44,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        color: Appstyle.color3,
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
                        ]),
                    child: const Center(
                        child: ContainerValue(
                      isright: true,
                    )),
                  ),
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
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                        color: Appstyle.color3,
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
                        ]),
                    child: const Center(child: ContainerValue()),
                  ),
                  Container(
                    width: width * 0.44,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Asset.weight)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
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
                    ]),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'result');
                  },
                  child: Text(
                    '=',
                    style: Appstyle.headLine01,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
