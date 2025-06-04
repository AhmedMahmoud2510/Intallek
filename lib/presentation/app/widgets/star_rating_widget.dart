import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  const StarRating({
    required this.onRatingChanged,
    super.key,
    this.starCount = 5,
    this.size = 40,
    this.color = Colors.amber,
  });

  final int starCount;
  final double size;
  final Color color;
  final void Function(int) onRatingChanged;

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.starCount, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentRating = index + 1;
              });
              widget.onRatingChanged(_currentRating);
            },
            child: Icon(
              index < _currentRating ? Icons.star : Icons.star_border,
              color: widget.color,
              size: widget.size,
            ),
          );
        }),
      ),
    );
  }
}
/// to use
// void void StarRating(
//   onRatingChanged = (rating) {
//     print('تم اختيار التقييم: $rating');
//     // حفظ القيمة في متغير أو إرسالها إلى API
//   },
// ),

