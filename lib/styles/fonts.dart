part of styles;

//FiraSans font

class AppFont {
  static TextStyle getAppFont(
      {FontWeight? fontWeight, Color? color, double? fontSize}) {
    return GoogleFonts.firaSans(
      textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  //Header font
  static final primaryHeaderFont = getAppFont(
    fontWeight: FontWeight.w900,
    color: HeaderTextColor.primaryColor,
    fontSize: 40,
  );

  static final secondaryHeaderFont = getAppFont(
    fontWeight: FontWeight.w900,
    color: HeaderTextColor.primaryColor,
    fontSize: 24,
  );

  //Text font
  static final primaryTextFont = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColor.primaryColor,
    fontSize: 16,
  );

  static final secondaryTextFont = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColor.secondaryColor,
    fontSize: 16,
  );
}
