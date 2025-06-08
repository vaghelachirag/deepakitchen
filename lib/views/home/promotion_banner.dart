import 'package:flutter/material.dart';

import '../../uttils/constants.dart';
import '../../widget/scalton_rounded_container.dart';


class PromotionBanner extends StatefulWidget {
  const PromotionBanner({
    Key? key,
  }) : super(key: key);

  @override
  _PromotionBannerState createState() => _PromotionBannerState();
}

class _PromotionBannerState extends State<PromotionBanner> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: isLoading
          ? const AspectRatio(
              aspectRatio: 1.97,
              child: ScaltonRoundedContainer(radious: 12),
            )
          : SizedBox(child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset("assets/images/Banner.png"),
            )),
    );
  }
}
