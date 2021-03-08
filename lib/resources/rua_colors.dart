import 'dart:ui';

class RuaColors extends Color {
  const RuaColors(int value) : super(value);

  factory RuaColors.hexColor(String hexColor) => RuaColors(
        _getColorFromHex(hexColor),
      );

  static const Color amethyst = Color(0xff9B5DE5);
  static const Color magentaCrayola = Color(0xfff15bb5);
  static const Color minionYellow = Color(0xfffee440);
  static const Color capri = Color(0xff00bbf9);
  static const Color seaGreenCrayola = Color(0xff00f5d4);
  static const Color transparent = Color(0x00000000);

  static int _getColorFromHex(String hexColor) {
    var hex = hexColor.toUpperCase().replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    return int.parse(hex, radix: 16);
  }
}
