import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData iconData;
  final Function()? onTap;
  final bool isSelected;
  BottomNavItem({required this.iconData, this.onTap, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          IconButton(
            icon: Icon(iconData, color: isSelected ? Theme.of(context).primaryColor : Colors.grey, size: 25),
            onPressed: onTap,
          ),
          Container(width: 6,height: 2,color: isSelected? Theme.of(context).primaryColor:Colors.black)
        ],
      ),
    );
  }
}
