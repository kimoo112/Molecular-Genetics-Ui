import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
 final String Sentence ;

  const ExpandedWidget({super.key, required this.Sentence});

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  String TapToExpandIt = 'اهـداف الـدرس';
  bool isExpanded = true;
  bool isExpanded2 = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded ? 20 : 5,
              vertical: 20,
            ),
            padding: EdgeInsets.all(15),
            height: isExpanded ? 70 : 310,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff6F12E8).withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(5, 10),
                ),
              ],
              color: Color(0xff6F12E8),
              borderRadius: BorderRadius.all(
                Radius.circular(isExpanded ? 20 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.white,
                      size: 27,
                    ),
                    Text(
                      TapToExpandIt,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                isExpanded ? SizedBox() : SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: Text(
                    '',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild: Text(
                    widget.Sentence,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      color: Colors.white,
                      fontSize: 15.7,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
        // InkWell(
        //   highlightColor: Colors.transparent,
        //   splashColor: Colors.transparent,
        //   onTap: () {
        //     setState(() {
        //       isExpanded2 = !isExpanded2;
        //     });
        //   },
        //   child: AnimatedContainer(
        //     margin: EdgeInsets.symmetric(
        //       horizontal: isExpanded2 ? 25 : 0,
        //       vertical: 20,
        //     ),
        //     padding: EdgeInsets.all(20),
        //     height: isExpanded2 ? 70 : 330,
        //     curve: Curves.fastLinearToSlowEaseIn,
        //     duration: Duration(milliseconds: 1200),
        //     decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           color: Color(0xffFF5050).withOpacity(0.5),
        //           blurRadius: 20,
        //           offset: Offset(5, 10),
        //         ),
        //       ],
        //       color: Color(0xffFF5050),
        //       borderRadius: BorderRadius.all(
        //         Radius.circular(isExpanded2 ? 20 : 0),
        //       ),
        //     ),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               TapToExpandIt,
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 22,
        //                 fontWeight: FontWeight.w400,
        //               ),
        //             ),
        //             Icon(
        //               isExpanded2
        //                   ? Icons.keyboard_arrow_down
        //                   : Icons.keyboard_arrow_up,
        //               color: Colors.white,
        //               size: 27,
        //             ),
        //           ],
        //         ),
        //         isExpanded2 ? SizedBox() : SizedBox(height: 20),
        //         AnimatedCrossFade(
        //           firstChild: Text(
        //             '',
        //             style: TextStyle(
        //               fontSize: 0,
        //             ),
        //           ),
        //           secondChild: Text(
        //             Sentence,
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 15.7,
        //             ),
        //           ),
        //           crossFadeState: isExpanded2
        //               ? CrossFadeState.showFirst
        //               : CrossFadeState.showSecond,
        //           duration: Duration(milliseconds: 1200),
        //           reverseDuration: Duration.zero,
        //           sizeCurve: Curves.fastLinearToSlowEaseIn,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
