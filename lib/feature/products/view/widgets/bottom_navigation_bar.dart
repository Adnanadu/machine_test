// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BottomNaviBar extends StatefulHookWidget {
//   const BottomNaviBar({super.key});

//   @override
//   State<BottomNaviBar> createState() => _BottomNaviBarState();
// }

// class _BottomNaviBarState extends State<BottomNaviBar> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(16),
//           topRight: Radius.circular(16),
//         ),
//         child: BottomAppBar(
//           //Botton Navigation bar Backround Color
//           color: Colors.black87,
//           shape: const CircularNotchedRectangle(),

//           notchMargin: 8,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     MaterialButton(
//                       shape: const CircleBorder(),
//                       minWidth: 24,
//                       onPressed: () => onTabTapped(0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             height: 24, // Adjust this as needed
//                             width: 24,
//                             image: SvgPicture.asset(tabIndex.value == 0"assets/icons/home.svg"),
//                             color: Colors.deepPurpleAccent,
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                           Text(
//                             'Home',
//                             style: TextStyle(
//                               color: tabIndex.value == 0
//                                   ? Colors.deepPurpleAccent
//                                   : Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       shape: const CircleBorder(),
//                       minWidth: 24,
//                       onPressed: () => onTabTapped(1),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             height: 24, // Adjust this as needed
//                             width: 24,
//                             image: AssetImage(tabIndex.value == 1
//                                 ? "assets/images/search.png"
//                                 : "assets/images/search.png"),
//                             color: Colors.deepPurpleAccent,
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                           Text(
//                             'Explore',
//                             style: TextStyle(
//                               color: tabIndex.value == 1
//                                   ? Colors.deepPurpleAccent
//                                   : Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       shape: const CircleBorder(),
//                       minWidth: 24,
//                       onPressed: () => onTabTapped(3),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             height: 24, // Adjust this as needed
//                             width: 24,
//                             image: AssetImage(tabIndex.value == 3
//                                 ? "assets/images/message_filled.png"
//                                 : "assets/images/message_out-filled.png"),
//                             color: Colors.deepPurpleAccent,
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                           Text(
//                             'Messages',
//                             style: TextStyle(
//                               color: tabIndex.value == 3
//                                   ? Colors.deepPurpleAccent
//                                   : Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       shape: const CircleBorder(),
//                       minWidth: 24,
//                       onPressed: () => onTabTapped(4),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             height: 24, // Adjust this as needed
//                             width: 24,
//                             image: AssetImage(tabIndex.value == 4
//                                 ? "assets/images/user_filled.png"
//                                 : "assets/images/user_out-lined.png"),
//                             color: Colors.deepPurpleAccent,
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                           Text(
//                             'Profile',
//                             style: TextStyle(
//                               color: tabIndex.value == 4
//                                   ? Colors.deepPurpleAccent
//                                   : Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }