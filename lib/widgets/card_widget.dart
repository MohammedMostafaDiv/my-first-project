import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({
   required this.leadingIcon,
   required this.title,
   required this.subTitle,
   required this.tralingIcon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData tralingIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25,right: 25,bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(leadingIcon),
            ),
            // SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: onPressed, icon: Icon(tralingIcon)),
          ],
        ),
      ),
    );
  }
}
