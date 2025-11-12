import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  const CustomButton({
    Key? key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  }) : super(key: key);

  Color get _color {
    switch (type) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Text(label, style: TextStyle(color: Colors.white)),
      SizedBox(width: 8),
      Icon(icon, color: Colors.white),
    ];

    if (iconPosition == IconPosition.right) {
      children = children.reversed.toList();
    }

    return ElevatedButton(
      onPressed: type == ButtonType.disabled ? null : () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: _color,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
