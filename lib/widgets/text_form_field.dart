import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oloworay_autos_/widgets/text_form_field_header.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';

class AppTextField extends StatefulWidget {
    const AppTextField({
    Key? key,
    required this.headerText,
    this.asterisk,
    required this.validator,
    required this.onChanged,
    required this.onSaved,
    required this.hintText,
    this.controller,
    this.svgIcon,
    this.hintTextStyle,
    this.suffix,
    this.show,
    required this.textInputType, this.focusNode,
  }) : super(key: key);
  final String headerText;
  final String? asterisk;
  final String? Function(String? value) validator;
  final void Function(String value) onChanged;
  final void Function(String? value) onSaved;
  final String hintText;
  final TextEditingController? controller;
  final String? svgIcon;
  final TextStyle? hintTextStyle;
  final Widget? suffix;
  final bool? show;
  final FocusNode? focusNode;
  final TextInputType textInputType;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  //Focus node for color changing
  FocusNode focusNode = FocusNode();

  //On init method for setState of FocusNode
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {setState(() {
    });});
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TextFormFieldHeader(headerText: widget.headerText, asterisk: widget.asterisk),
          SizedBox(height: AppDimension.height8),
          widget.svgIcon != null
              ?  SizedBox(
                    height: AppDimension.height52,
                    child: TextFormField(
                      focusNode: focusNode,
                      //focusNode: uController.focusNode,
                      controller: widget.controller,
                      onSaved: widget.onSaved,
                      validator: widget.validator,
                      onChanged: widget.onChanged,
                      keyboardType: widget.textInputType,
                      cursorColor: AppColors.black24,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.black80,
                            fontSize: AppDimension.font14,
                          ),
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: widget.hintTextStyle ??
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.fade,
                                  fontSize: AppDimension.font14,
                                ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: AppDimension.width10, vertical: AppDimension.height13),
                          child: SvgPicture.asset(
                            widget.svgIcon!,
                            // width: AppDimension.width12,
                            // height: AppDimension.height12,
                            colorFilter: focusNode.hasFocus ? ColorFilter.mode(
                                AppColors.black80, BlendMode.srcIn)
                                :const ColorFilter.mode(
                                AppColors.fade, BlendMode.srcIn),
                          ),
                        ),
                        suffixIcon: widget.suffix,
                      ),
                      obscureText: widget.show!,
                    ),
          )
              : SizedBox(
                  height: AppDimension.height52,
                  child: TextFormField(
                    focusNode: widget.focusNode,
                    onSaved: widget.onSaved,
                    validator: widget.validator,
                    onChanged: widget.onChanged,
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: AppColors.black24,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.fade,
                                fontSize: AppDimension.font14,
                              ),
                      suffixIcon: widget.suffix,
                    ),
                    obscureText: widget.show!,
                  ),
                ),
        ],
    );
  }

}
