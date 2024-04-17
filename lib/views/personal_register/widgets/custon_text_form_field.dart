import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        
      decoration: InputDecoration(
        // hintText: ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
        )
       ),
      ),
    );
  }
}