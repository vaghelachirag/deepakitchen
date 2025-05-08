import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

Text txt500SizeColor(title, double size, Color color) {
  return Text(
    title.toString(),
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text txtNormalSizeCentercolor(title, double size, Color color) {
  return Text(
    title.toString(),
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
        fontSize: size,
        color: color
    ),
  );
}

Text txt500SizeColorCenter(title, double size, Color color) {
  return Text(
    title.toString(),
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    ),
  );
}
/// Definer text style,decoration style, card style in this file
class AppStyles {

  static const TextStyle txt20W600PrimaryColor = TextStyle(
    color: AppColors.kcPrimaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle txt20W600WhiteColor = TextStyle(
    color: AppColors.kcWhite,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static  TextStyle txt14W700WhiteColor = const TextStyle(
    color: AppColors.kcWhite,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

 static BoxDecoration boxDecoration() {
    return BoxDecoration(
        color: AppColors.kcInputFilled.withOpacity(0.1),
        border: Border.all(color: AppColors.kcWhite.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10)
    );
  }



  static InputDecoration txtPreIconInput(txt, icon,  size) {
    return InputDecoration(
     contentPadding: const EdgeInsets.only(left: 15,),
      hintText: txt,
      suffixIcon:  Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          icon,
          width: size,
          height:size,
         // color: AppColors.kcWhite,
          fit: BoxFit.contain,
        ),
      ),

      hintStyle: GoogleFonts.poppins(
          color: AppColors.kcCaptionLightGray
      ),
      border: InputBorder.none,
    );
  }

  static Text txtNormalSizeColor(title, double size, Color color) {
    return Text(
      title.toString(),
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
      ),
    );
  }

  static Text txt500SizeColor(title, double size, Color color) {
    return Text(
      title.toString(),
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.clip,
    );
  }

  static Text txtNormalSizeColorCut(title, double size, Color color) {
    return Text(
      title.toString(),
      style: GoogleFonts.poppins(
          fontSize: size, color: color, decoration: TextDecoration.lineThrough),
    );
  }

  static Text txtNormalSizeColorLine(title, double size, Color color, int line) {
    return Text(
      title.toString(),
      maxLines: line,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(fontSize: size, color: color),
    );
  }

  static Text txtNormalSizeCentercolor(title, double size, Color color) {
    return Text(
      title.toString(),
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(fontSize: size, color: color),
    );
  }

 static Text txtNormalSizeLeftColor(title, double size, Color color) {
   return Text(
     title.toString(),
     textAlign: TextAlign.left,
     overflow: TextOverflow.ellipsis,
     style: GoogleFonts.poppins(fontSize: size, color: color),
   );
 }

  static const TextStyle txt18sizeW600White = TextStyle(
      color: AppColors.kcWhite, fontSize: 18, fontWeight: FontWeight.w600,);

  static const TextStyle txt18sizeW600BlackColor = TextStyle(
      color: AppColors.kcDefaultText, fontSize: 18, fontWeight: FontWeight.w600);

  static const TextStyle txt18sizeW600RedColor = TextStyle(
      color: AppColors.kcRed, fontSize: 18, fontWeight: FontWeight.w600);

  static const TextStyle txt16sizeW600WhiteColor = TextStyle(
      color: AppColors.kcWhite, fontSize: 16, fontWeight: FontWeight.w600);

  static const TextStyle txt18sizeW600SeconderyColor = TextStyle(
      color: AppColors.kcPrimaryColor, fontSize: 18, fontWeight: FontWeight.w600);
  static const TextStyle txt18sizeW600SeconderyColorPink = TextStyle(
      color: AppColors.kcSeconderyColor, fontSize: 18, fontWeight: FontWeight.w600);
 static const TextStyle txt16sizeW600BlackColor = TextStyle(
     color: AppColors.kcBlack, fontSize: 16, fontWeight: FontWeight.w600);
  static const TextStyle txt18sizeW600WhiteColor = TextStyle(
      color: AppColors.kcWhite, fontSize: 18, fontWeight: FontWeight.w600);
  static const TextStyle txt16sizeW600WhiteColors = TextStyle(
      color: AppColors.kcPrimaryColor, fontSize: 16, fontWeight: FontWeight.w600);

  static const TextStyle txt14sizeW400WhiteColor = TextStyle(
      color: AppColors.kcPrimaryColor, fontSize: 14, fontWeight: FontWeight.w400);

  static const TextStyle txt10sizeWithW700 = TextStyle(
      fontSize: 10,
      color: AppColors.kcPrimaryColor,
      fontWeight: FontWeight.bold);

  static const TextStyle txt12sizeW500Black = TextStyle(
      fontSize: 12,
      color: AppColors.kcBlack,

      fontWeight: FontWeight.w500);

  static const TextStyle txt10sizeW500Black = TextStyle(
      fontSize: 10,
      color: AppColors.kcBlack,

      fontWeight: FontWeight.w500);

  static const TextStyle txt12sizeW600Black = TextStyle(
      fontSize: 12,
      color: AppColors.kcBlack,

      fontWeight: FontWeight.w600);

  static const TextStyle txt12sizeW600Blue = TextStyle(
      fontSize: 12,
      color: Colors.blueAccent,

      fontWeight: FontWeight.w600);

  static const TextStyle txt12sizeW500CaptionLightGrey = TextStyle(
      fontSize: 12,
      color: AppColors.kcCaptionLightGray,
      fontWeight: FontWeight.w500);

  static const TextStyle txt12sizeW500White = TextStyle(
      fontSize: 12,
      color: AppColors.kcWhite,
      fontWeight: FontWeight.w500);
  static const TextStyle txt14sizeW500CaptionLightGray = TextStyle(
      fontSize: 14,
      color: AppColors.kcCaptionLightGray,
      fontWeight: FontWeight.w500);

  static const TextStyle txt12sizeW500Red = TextStyle(
      fontSize: 12,
      color: AppColors.kcRed,
      fontWeight: FontWeight.w500);

  static const txt14sizeW400ckcWhite = TextStyle(
      color: AppColors.kcSubtitleText2, fontSize: 14, fontWeight: FontWeight.w400);

  static const txt15sizeW600ckcWhite = TextStyle(
      color: AppColors.kcWhite, fontSize: 15, fontWeight: FontWeight.w600);

  static const txt16sizeW600ckcWhiteText = TextStyle(
      color: AppColors.kcWhite, fontSize: 16, fontWeight: FontWeight.w600);

  static const TextStyle txt14sizeW700ColorPrimary = TextStyle(
      fontSize: 14,
      color: AppColors.kcPrimaryColor,
      fontWeight: FontWeight.w700);

  static const TextStyle txt14sizeW400ColorPrimary = TextStyle(
      fontSize: 14,
      color: AppColors.kcPrimaryColor,
      fontWeight: FontWeight.w400);

  static const TextStyle txt14sizeW700ColorGredient = TextStyle(
      fontSize: 16,
      color: AppColors.kcSideMenuFontColor,
      fontWeight: FontWeight.w400);

  static const TextStyle txt14sizeW700ColorGredientOd = TextStyle(
      fontSize: 14,
      color: AppColors.grediantTwo,
      fontWeight: FontWeight.w700);

  static const TextStyle txt14sizeW700ColorBlue = TextStyle(
      fontSize: 14,
      color: AppColors.kcCategoryBG,
      fontWeight: FontWeight.w700);

  static const TextStyle txt12sizeW700ColorBlue = TextStyle(
      fontSize: 12,
      color: AppColors.kcCategoryBG,
      fontWeight: FontWeight.w700);

  static const TextStyle txt14sizeW700ColorRed = TextStyle(
      fontSize: 14,
      color: AppColors.kcRed,
      fontWeight: FontWeight.w700);



  static const TextStyle txt14sizeW500ColorWhite = TextStyle(
      fontSize: 14,
      color: AppColors.kcWhite,
      fontWeight: FontWeight.w500);

  static const TextStyle txt14sizeW500ColorBlack = TextStyle(
      fontSize: 14,
      color: AppColors.kcBlack,
      fontWeight: FontWeight.w500);

  static const TextStyle txt14sizeW400ColorBlack = TextStyle(
      fontSize: 14,
      color: AppColors.kcBlack,
      fontWeight: FontWeight.w400);

  static const txt16sizeW600White = TextStyle(
      color: AppColors.kcWhite,
      fontSize: 16,
      fontWeight: FontWeight.w600);

  static const txt24sizeW600kcCaptionLightGray = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.kcCaptionLightGray);
  static const txt32sizeWithW700 = TextStyle(
      fontSize: 32, color: AppColors.kcWhite, fontWeight: FontWeight.w700);
  static const txt14sizeWithW600Underline = TextStyle(
      fontSize: 14,
      color: AppColors.kcSeconderyColor,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline);
  static const txt10sizeW600ColorPrimary = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.kcPrimaryColor);
  static const txt12sizeW600ColorPrimary = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.kcPrimaryColor);

  static const txt12sizeW600ColorWarning = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.kcWarningColor);

  static const txt10sizeW600ColorGreen = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.kcGreenFont);
  static const txt12sizeW400ColorGreen = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.kcGreenFont);
  static const txt14sizeW600ColorGreen = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.kcGreenFont);

  static const txt16sizeW600ColorRed = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.kcRed);

  static const txt14sizeW600ColorRed = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.kcRed);

  static const txt10sizeW600ColorGrey = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.kcCaptionLightGray);

  static const txt10sizeW600ColorWhite = TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: AppColors.kcWhite);
  static const txt10sizeWithW500 = TextStyle(
      fontSize: 10, color: AppColors.kcWhite, fontWeight: FontWeight.w700);
  static const txt10sizeWithW500SecondaryColor = TextStyle(
      fontSize: 11, color: AppColors.kcCaptionLightGray, fontWeight: FontWeight.w700);
  static const txt18sizeWithW600 = TextStyle(
      fontSize: 18,
      color: AppColors.kcCaptionLightGray,
      fontWeight: FontWeight.w600);
  static const txtIntroTitle = TextStyle(
      fontSize: 28, color: AppColors.kcSeconderyColor, fontWeight: FontWeight.w700);

  static const selectedLabelStyle = TextStyle(
      color: AppColors.kcCaptionLightGray,
      fontWeight: FontWeight.w600,
      fontSize: 8);
  static const selectedLabelPink = TextStyle(
      color: AppColors.kcBlack,
      fontWeight: FontWeight.w600,
      fontSize: 10);
  static final unSelectedLabelOffWhite = TextStyle(
      color: AppColors.kcWhite.withOpacity(0.6),
      fontWeight: FontWeight.w600,
      fontSize: 10);

  static const txt14sizeWithW500HintGrey = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.hintColor);

  static BoxDecoration whiteButton = BoxDecoration(
      border: Border.all(color: AppColors.kcRed),
      color: AppColors.kcRed,
      borderRadius: BorderRadius.circular(5));
}
