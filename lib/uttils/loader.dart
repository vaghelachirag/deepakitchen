import 'package:flutter/material.dart';

import '../global/constant/colors.dart';

class ProgressLoader extends StatelessWidget {
  final String? msg;

  const ProgressLoader({super.key, this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(20),
                  child: const CircularProgressIndicator(
                      color: AppColors.kcPrimaryColor)),
              Text(msg ?? "", textAlign: TextAlign.center)
            ])));
  }
}