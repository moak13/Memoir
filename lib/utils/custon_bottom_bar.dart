import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final Color defaultColor = Colors.grey;
final Color selectedColor = Colors.cyan;

class BottomNav extends StatefulWidget {
  final int index;
  final void Function(int i) onTap;
  final List<BottomNavItem> items;
  final double elevation;
  final IconStyle iconStyle;
  final Color color;

  BottomNav(
      {this.index,
      this.onTap,
      this.items,
      this.elevation,
      this.iconStyle,
      this.color})
      : assert(items != null),
        assert(items.length > 2);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex;
  IconStyle iconStyle;

  @override
  void initState() {
    // TODO: implement initState
    currentIndex = widget.index ?? 0;
    iconStyle = widget.iconStyle ?? IconStyle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: ScreenUtil.screenWidth, height: ScreenUtil.screenHeight);
    return Material(
      elevation: 8.0,
          child: Container(
        height: ScreenUtil().setHeight(120),
        width: ScreenUtil().setWidth(500),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: widget.items.map((b) { 
          final int i = widget.items.indexOf(b);
          final bool selected = i == currentIndex;

          return BMNavItem(
            icon: b.icon,
            iconSize: selected ? iconStyle.getSelectedSize() : iconStyle.getSize(),
            onTap: () => onItemClick(i),
            color: selected ? iconStyle.getSelectedColor() : iconStyle.getColor(),
          );
        }).toList(),
        ),
      ),
    );
  }
  onItemClick(int i) {
    setState(() {
      currentIndex = i;
    });
    if (widget.onTap != null) widget.onTap(i);
  }
}

class BottomNavItem {
  final IconData icon;

  BottomNavItem(this.icon);
} 

class IconStyle {
  final double size;
  final double onSelectSize;
  final Color color;
  final Color onSelectColor;

  IconStyle({this.size, this.onSelectSize, this.color, this.onSelectColor});

  getSize() {
    return size ?? 24.0;
  }

  getSelectedSize() {
    return onSelectSize ?? 24.0;
  }

  getColor() {
    return color ?? defaultColor;
  }

  getSelectedColor() {
    return onSelectColor ?? selectedColor;
  }
}

class BMNavItem extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final void Function() onTap;
  final Color color;

  BMNavItem({
    this.icon,
    this.iconSize,
    this.onTap,
    this.color,
  }) : 
    assert(icon != null),
    assert(iconSize != null),
    assert(color != null),
    assert(onTap != null);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GestureDetector(
        key: key,
        child: Padding(
          padding: getPadding(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: iconSize, color: color),
            ],
          ),
        ),
        onTap: () => onTap(),
      )
    );
  }

  // getPadding returns the padding after adjusting the top and bottom
  // padding based on the fontsize and iconSize.
  getPadding() {
    return EdgeInsets.fromLTRB(
      0.0, (56 - iconSize) / 2, 0.0, (56 - iconSize) / 2
    );
  }
}
