import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalItems extends StatefulWidget {
  const TotalItems({super.key, required this.title, this.isSoldScreen = false});
  final String title;
  final bool isSoldScreen;

  @override
  State<TotalItems> createState() => _TotalItemsState();
}

class _TotalItemsState extends State<TotalItems> {
  final _filterCategory = [
    "Today",
    "Last 7 days",
    "Last 28 days",
    "Last month",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title,
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.black45,
              )),
          widget.isSoldScreen
              ? SizedBox(
                  height: 39,
                  width: MediaQuery.sizeOf(context).width / 2.7,
                  child: Center(
                    child: DropdownButtonFormField(
                      elevation: 1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          border: InputBorder.none,
                          hintText: "Filter by"),
                      items: _filterCategory.map(
                        (String category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text(
                              category,
                              style: GoogleFonts.publicSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.black45,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
