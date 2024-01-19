import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text);
    return ChoiceChip(
      label: isColor != null ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: isColor != null
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: isColor,
            )
          : null,
      shape: isColor != null ? const CircleBorder() : null,
      backgroundColor: isColor != null ? isColor : null,
      labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
      padding: isColor != null ? const EdgeInsets.all(0) : null,
    );
  }
}
