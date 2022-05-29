import 'package:flutter/material.dart';
import 'package:to_do/taskpage.dart';
import 'package:to_do/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            ),
            color: Color(0xFFF6F6F6) ,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                  ),
                  Image(image: AssetImage("assets/images/to_do_logo_icon.png"),
                  ),
                  Expanded(
                    child: ListView(
                      //scrollDirection: Axis.horizontal,
                    children: [
                    TaskCardWidget(title: 'Get Started', desc: 'Hello User! Welcome',),
                    TaskCardWidget(title: '', desc: '',),
                    TaskCardWidget(title: '', desc: '',),
                    TaskCardWidget(title: '', desc: '',),
                    TaskCardWidget(title: '', desc: '',),
                    ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 24.0,

                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>TaskPage(),
                    ),);
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image(image: AssetImage("assets/images/add_icon.png"),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}