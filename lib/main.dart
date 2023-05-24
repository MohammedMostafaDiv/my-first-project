import 'package:bio_app/widgets/card_container_widget.dart';
import 'package:bio_app/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Bio'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.pink.shade200,
                Colors.green.shade100,
                Colors.blue.shade200,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcqDvM3yBQzXMAkCB8wvf88-dDcgDZPSj7Gw&usqp=CAU'),
                radius: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Mohammed', style: GoogleFonts.architectsDaughter(fontSize: 20)),
              Text('Flutter course_Vision Plus', style: GoogleFonts.architectsDaughter(fontSize: 15)),
              const Divider(
                thickness: 1,
                color: Colors.yellow,
                indent: 30,
                endIndent: 30,
                height: 40,
              ),
              CardWidgets(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'Flutter@gmail.com',
                tralingIcon: Icons.send,
                onPressed: () {
                  print('send email');
                },
              ),
              CardWidgets(
                leadingIcon: Icons.phone_android,
                title: 'Mobile',
                subTitle: '+9725913_4567',
                tralingIcon: Icons.call,
                onPressed: () {
                  print('call mobile');
                },
              ),
              const BioContainer(
                  leadinIcon: Icons.location_on,
                  title: 'Address',
                  subTitle: 'Gaza_vision Plus',
                  traleingIcon: Icons.map,
              ),
              const BioContainer(
                leadinIcon: Icons.location_on,
                title: 'Mohammed',
                subTitle: 'Gaza_vision Plus',
                traleingIcon: Icons.map,
              ),
              const Spacer(),
              Text('Vision_Plus_2022',style: GoogleFonts.architectsDaughter(fontSize: 20)),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
