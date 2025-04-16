import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/Filter/filter_banner_widget.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/Filter/filter_button_widget.dart';

class FilterHelperWidget extends StatelessWidget {
  const FilterHelperWidget(
      {super.key, required this.buttons, required this.banner});
  final List<FilterButtonWidget> buttons;
  final String banner;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        FilterBannerWidget(
          banner: banner,
        ),
        Wrap(
          spacing: 8,
          children: buttons,
        ),
      ],
    );
  }
}
