import 'package:flutter/material.dart';
import 'package:to_do/widgets.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({ Key? key }) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 6.0),
                  child: Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(padding: const EdgeInsets.all(24.0),
                      child: Image(image: AssetImage("assets/images/back_icon.png"),
                      ),
                      ),
                    ),
                    Expanded(child: TextField(
                      onSubmitted: (value){
                        print("Field Value: $value");
                      },
                      decoration: InputDecoration(
                        hintText:"Enter task title",
                        border: InputBorder.none,

                      ),
                      style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, color: Color(0xFF211551),
                      ),
                    ),)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter the description of the task",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 24.0,),
                    )
                  ),
                ),
                TodoWidget(text: "Add a new todo", isDone: false),
                TodoWidget(text: "Add a new todo", isDone: true),
                
              ],),
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
                    child: Image(image: AssetImage("assets/images/delete_icon.png"),),
                  ),
                ),
              ),
            ],
          )
      
        ),
      ),
    );
  }
}

