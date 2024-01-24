import 'package:e_commerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressingIndicator(text: '5', value: 1.0),
              TRatingProgressingIndicator(text: '4', value: 0.8),
              TRatingProgressingIndicator(text: '3', value: 0.6),
              TRatingProgressingIndicator(text: '2', value: 0.4),
              TRatingProgressingIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
