// Build animated item (helper for all examples)


import 'package:flutter/cupertino.dart';

Widget Function(
    BuildContext context,
    int index,
    Animation<double> animation,
    ) animationItemBuilder(Widget Function(int index) child,{
      EdgeInsets padding = EdgeInsets.zero
})=>(
    BuildContext context,
    int index,
    Animation<double> animation,
)=>
    // For example wrap with fade transition
FadeTransition(
  opacity: Tween<double>(
    begin: 0,
    end: 1,
  ).animate(animation),
  // And slide transition
  child: SlideTransition(
    position: Tween<Offset>(
      begin: Offset(0, -0.1),
      end: Offset.zero,
    ).animate(animation),
    // Paste you Widget
    child:Padding(padding: padding, child: child(index),),
  ),
);