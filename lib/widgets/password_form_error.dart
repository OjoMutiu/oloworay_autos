import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';


class PassWordFormError extends StatelessWidget {
  const PassWordFormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
          errors.length,
              (index) => buildErrorMessage(context, errorMessage: errors[index]),)
    );
  }

  Row buildErrorMessage(BuildContext context,{required String errorMessage}) {
    return Row(
      children: [
        Icon(Icons.error_outline,
          color: Colors.redAccent,
          size: AppDimension.getProportionateScreenHeight(11),
        ),
        SizedBox(width: AppDimension.width4),
        Text(errorMessage, style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppColors.textBody
        ),),
        SizedBox(width: AppDimension.width8),
      ],
    );
  }
}