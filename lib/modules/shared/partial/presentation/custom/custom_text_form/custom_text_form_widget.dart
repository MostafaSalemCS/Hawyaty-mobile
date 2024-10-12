import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:hawyaty/core/extension/build_context/theme_build_context.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/custom_text_form/error_widget.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/custom_text_form/hint_widget.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/input_background/input_background_widget.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormWidget extends StatefulWidget {
  final int? maxLength;
  final AutovalidateMode? autoValidateMode;
  final int? maxLines;
  String? initialValue;
  final ValueChanged<String>? onChanged;
  final bool? isEnabled;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextStyle? initialTextStyle;
  final InputDecoration? inputDecoration;
  final String? placeholderText;
  final FormFieldValidator<String>? validator;
  final String? hint;

  CustomTextFormWidget(
      {super.key,
      this.maxLength,
      this.autoValidateMode,
      this.maxLines,
      this.onChanged,
      this.isEnabled,
      this.controller,
      this.keyboardType,
      this.obscureText,
      this.initialTextStyle,
      this.inputDecoration,
      this.placeholderText,
      this.validator,
      this.hint});

  @override
  State<CustomTextFormWidget> createState() => _CustomTextFormWidgetState();
}

class _CustomTextFormWidgetState extends State<CustomTextFormWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FormField(
      autovalidateMode: widget.autoValidateMode,
      validator: ((value) {
        if (widget.validator != null) {
          return widget.validator!(widget.initialValue);
        }
        return null;
      }),
      builder: (FormFieldState<String> state) {
        int stringLength = widget.initialValue?.length ?? 0;

        return Column(
          children: [
            if (widget.hint != null) ...[
              HintWidget(hint: widget.hint!),
            ],
            Stack(
              children: [
                const InputBackgroundWidget(),
                TextFormField(
                  inputFormatters: [
                    if (widget.maxLength != null && widget.maxLength! > 0) ...[
                      LengthLimitingTextInputFormatter(widget.maxLength!),
                    ]
                  ],
                  autovalidateMode: widget.autoValidateMode,
                  onTapOutside: (PointerDownEvent event) {
                    FocusScope.of(context).unfocus();
                  },
                  maxLines: widget.maxLines,
                  initialValue: widget.initialValue,
                  onChanged: (value) {
                    // if (value.length > widget.maxLength!) return;

                    widget.onChanged!(value);
                    widget.initialValue = value;
                    stringLength = value.length;
                  },
                  enabled: widget.isEnabled ?? true,
                  controller: widget.controller,
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText ?? false,
                  style:
                      widget.initialTextStyle ?? context.getAppTheme.appThemeText.h5BoldTextStyle,
                  decoration: widget.inputDecoration ??
                      InputDecoration(
                        hintText: widget.placeholderText,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle: context.getAppTheme.appThemeText.h5BoldTextStyle.copyWith(
                            color: context.getAppTheme.colors
                                .supplementaryColors[SupplementaryColorsEnum.neutral]),
                        contentPadding: EdgeInsets.only(left: 4.w, bottom: 0, top: 0, right: 4.w),
                        errorStyle: context.getAppTheme.appThemeText.h6BoldTextStyle.copyWith(
                          color: context
                              .getAppTheme.colors.supplementaryColors[SupplementaryColorsEnum.red],
                          height: 0.8,
                          // fontSize: MediaQuery.of(context).size.width >= KTabletBreakPoint ? 6.sp : 8.sp),
                        ),
                      ),
                ),
              ],
            ),
            if (state.hasError) ...[
              MyErrorWidget(errorText: state.errorText),
            ]
          ],
        );
      },
    );
  }
}
