import 'package:flutter/material.dart';
import 'package:to_do_list/ui/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function onTap;
  const MyButton({Key? key,
    required this.label,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 120, height: 50,
        decoration: BoxDecoration(
          color: primaryClr,
          borderRadius: BorderRadius.circular(20),
          //color: primaryClr,
        ),
        child: Center(child: Text(label,style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
