import 'package:flutter/material.dart';

import '../../res/util.dart';

class ContainerValue extends StatefulWidget {
  final bool? isright;
  const ContainerValue({super.key, this.isright = false});

  @override
  State<ContainerValue> createState() => _ContainerValueState();
}

class _ContainerValueState extends State<ContainerValue> {
  late TextEditingController controller;
  late int height;
  late int weight;
  late int value;
  String errormessage = "";

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
    controller.addListener(_textcontroller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _textcontroller() {
    if (controller.text.isNotEmpty) {
      value = int.parse(controller.text);
    }
  }

  void _increment() {
    setState(() {
      if (controller.text.isNotEmpty) {
        value++;
        controller.text = value.toString();
        errormessage = "";
      } else {
        errormessage = "Please enter value";
      }
    });
  }

  void _decrement() {
    setState(() {
      if (controller.text.isNotEmpty) {
        if (value > 0) {
          value--;
          controller.text = value.toString();
          errormessage = '';
        } else {
          errormessage = "Value cannot be negative.";
        }
      } else {
        errormessage = "Please enter value.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: widget.isright == true ? "Height" : "Weight",
              labelStyle: Appstyle.label,
              border: OutlineInputBorder(
                  borderRadius: widget.isright == true
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      : const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)))),
          controller: controller,
          maxLength: 3,
          maxLines: 1,
          textAlign: TextAlign.end,
          onChanged: (value) {},
          keyboardType: const TextInputType.numberWithOptions(signed: true),
        ),
        if (errormessage.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              errormessage,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: _increment,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Appstyle.title),
                child: Center(
                  child: Text(
                    "+",
                    style: Appstyle.headLine01,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _decrement,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Appstyle.title),
                child: Center(
                  child: Text(
                    "-",
                    style: Appstyle.headLine01,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
