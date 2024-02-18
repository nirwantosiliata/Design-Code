import 'package:desain_code_app/constants.dart';
import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  final Function triggerAnimation;
  const SidebarButton({super.key, required this.triggerAnimation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => triggerAnimation(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxHeight: 40,
        maxWidth: 40,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16,
              )
            ]),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
      ),
    );
  }
}
