import 'package:client/utils/assets.dart';
import 'package:flutter/material.dart';

class OnHoverImage extends StatefulWidget {
  final List<String> imageUrl;
  final String touristAttraction;
  final String capital;
  final double width;
  final int index;
  const OnHoverImage({
    super.key, required this.imageUrl, required this.touristAttraction, required this.capital, required this.width, required this.index,
  });

  @override
  State<OnHoverImage> createState() => _OnHoverImageState();
}
class _OnHoverImageState extends State<OnHoverImage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        width: size.width / widget.width,
        child: Stack(
          children: [
            Image.asset(
              widget.imageUrl[widget.index],
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0xFF24354A).withOpacity(0.8)],
                    stops: const [0.4, 1],
                  )
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.capital,
                    style: TextStyle(
                      decoration: isHovered?TextDecoration.underline:TextDecoration.none,
                      fontFamily: 'Comforter',
                      color: Color(0xFFFDC702),
                      fontSize: double.tryParse('${size.width/(widget.width*10)}'),
                    ),
                  ),
                  Text(widget.touristAttraction,
                    style: TextStyle(
                      fontFamily: 'AbrilFat',
                      decoration: isHovered?TextDecoration.underline:TextDecoration.none,
                      color: Colors.white,
                      height: 0.8,
                      fontSize: double.tryParse('${size.width/(widget.width*9)}'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
