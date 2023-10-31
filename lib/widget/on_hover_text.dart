import 'package:client/provider/on_hover_text_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnHoverText extends StatelessWidget {
  final String? title;
  final int? index;
  const OnHoverText({super.key, this.title,  this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnHoverTextProvider>(
      builder: (context, myProvider, _) => MouseRegion(
        onEnter: (_) => myProvider.setHover(index!),
        onExit: (_) => myProvider.setHover(-1),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.5,
                  color:  Colors.white, // Adjust the color based on hover state
                ),
              ),
              if (myProvider.hoveredIndex == index)
                Container(
                  width: 35,
                  height: 2,
                  color: Colors.white,
                )
            ],
          ),
        ),
      ),
    );
  }
}