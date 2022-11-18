part of 'shared.dart';

double defaultmargin = 24;

Color primaryColor = Color(0xff050522);
Color secondaryColor = Color(0xff00B798);
Color guestColor = Color(0xffB6AD90);
Color backgroundColor = Color(0xffF1F2F4);
Color textColor = Colors.white;
Color buttonColor = Color(0xFF05BE5E);
Color button2Color = Color(0xFF06BF60);

TextStyle selamatdatangTextStyle = GoogleFonts.ptSans(
    fontSize: 36, color: textColor, fontWeight: FontWeight.w500);
TextStyle deskripsiTextStyle = GoogleFonts.roboto(
    fontSize: 14, color: textColor, fontWeight: FontWeight.w500);
TextStyle registrasiTextStyle = GoogleFonts.roboto(
    fontSize: 36, color: primaryColor, fontWeight: FontWeight.w500);
TextStyle buttonStyle = GoogleFonts.roboto(
    fontSize: 14, color: buttonColor, fontWeight: FontWeight.w500);
TextStyle wikwokTextStyle = GoogleFonts.barlow(
    fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
TextStyle meTextStyle = GoogleFonts.barlow(
    fontSize: 14, color: textColor, fontWeight: FontWeight.bold);

Gradient backgroundGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF16D682), Color(0xFF05BE5E)],
);
