import 'package:flutter/material.dart';


class BioContainer extends StatelessWidget {
  const BioContainer({
    required this.leadinIcon,
    required this.title,
    required this.subTitle,
    required this.traleingIcon,

    Key? key,
  }) : super(key: key);

  final IconData leadinIcon;
  final String title;
  final String subTitle;
  final IconData traleingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 25,right: 25,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.pink,
            spreadRadius: .2,
            blurRadius: 1,
            offset: Offset(0,3),
          ),
          BoxShadow(
            color: Colors.yellowAccent,
            spreadRadius: .2,
            blurRadius: 1,
            offset: Offset(0,-3),
          )
        ],
      ),
      child: ListTile(
        leading: IconButton(onPressed: (){}, icon:  Icon(leadinIcon)),
        title:  Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
        subtitle:  Text(subTitle,style: const TextStyle(color: Colors.black45),),
        trailing: IconButton(onPressed: (){}, icon:  Icon(traleingIcon)),
      ),
    );
  }
}