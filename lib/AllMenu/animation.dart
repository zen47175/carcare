// import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';

// class FadeAnimation extends StatelessWidget {
//   // final double delay;
//   final Widget child;

//   FadeAnimation(this.child);

//   @override
//   Widget build(BuildContext context) {
//     return PlayAnimation<double>(
//       tween: Tween(begin: 100.0, end: 100.0),
//       duration: const Duration(seconds: 2),
//       delay: const Duration(seconds: 1),
//       curve: Curves.easeOut,
//       builder: (context, child, value) {
//         return Container(
//           width: value,
//           height: 50.0,
//           color: Colors.blue,
//         );
//       },
//     );
//   }
// }
