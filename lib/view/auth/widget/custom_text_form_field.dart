// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {

//   final Icon icon;
//   final String label;
//   final bool isPassword;
//   final TextInputType? keyboardType;
//   final Function(String) onChanged;

//   const CustomTextField({
//     Key? key,
//     required this.icon,
//     required this.label,
//     this.isPassword = false,
//     this.keyboardType,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(40),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 20,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: TextFormField(
//         obscureText: isPassword,
//         keyboardType: keyboardType,
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           prefixIcon: Padding(
//             padding: const EdgeInsets.all(14),
//             child: icon,
//           ),
//           hintText: label,
//           hintStyle: const TextStyle(
//             color: Color(0xFFC8C8C8),
//             fontSize: 15,
//             fontFamily: 'Lato',
//           ),
//           border: InputBorder.none,
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 20,
//             vertical: 16,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon icon;
  final String label;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Function(String) onChanged;
  final TextEditingController? controller; // Added controller parameter

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.label,
    this.isPassword = false,
    this.keyboardType,
    required this.onChanged,
    this.controller, // Make controller optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller, // Bind the controller to TextFormField
        obscureText: isPassword,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: icon,
          ),
          hintText: label,
          hintStyle: const TextStyle(
            color: Color(0xFFC8C8C8),
            fontSize: 15,
            fontFamily: 'Lato',
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
