import 'package:flutter/material.dart';

class FacebookWideLabelButtonContainer extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  const FacebookWideLabelButtonContainer({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  State<FacebookWideLabelButtonContainer> createState() =>
      _FacebookWideLabelButtonContainerState();
}

class _FacebookWideLabelButtonContainerState
    extends State<FacebookWideLabelButtonContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isTapped ? 0.98 : 1,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.maxFinite,
        // height: 20,
        child: GestureDetector(
          onTapDown: (_) {
            isTapped = true;
            setState(() {});
          },
          onTapUp: (_) {
            isTapped = false;
            widget.onTap();
            setState(() {});
          },
          onTapCancel: () {
            isTapped = false;
            setState(() {});
          },
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Text(
                  widget.label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              // Flexible(
              Container(
                width: double.infinity,
                height: 32,
                decoration: BoxDecoration(
                    color: isTapped
                        ? Colors.grey.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
