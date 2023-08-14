import 'package:flutter/material.dart';
import 'package:task_that/res/colors.dart';
import 'package:task_that/res/components/bullets.dart';

import '../res/images_constant.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<String> listItems=[];
  TextEditingController task=TextEditingController();











  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: SingleChildScrollView(
          child: Stack(
            children: [

              Column(

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Tasks List',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,


                        ),),
                      ),



                    ],



                  ),

                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Card(
                      elevation: 5,
                      shadowColor: Constants.primaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  'Daily Tasks',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                InkWell(
                                  onTap: () {
                                    show(context);
                                  },
                                  child: const Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
    // Ink well code
                            ),

                            ListView.builder(
                              shrinkWrap: true,

                              itemCount: listItems.length,
                              itemBuilder: (context, index) {
                              return  Column(
                                children: [
                                  ListTile(
                                    minLeadingWidth: 2,

                                    leading: MyBullet(),

                                    title: Text(listItems[index]),

                                  ),





                                ],


                              );



                            },),




                          ],


                        ),
                      ),


                    ),
                  ),




                ],


              ),
              Positioned(

                child: Image(
                image: AssetImage(ImageConstant.shape_image),
              ),)



            ],


          ),
        ),

        )


    );
  }


void show(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,

      context: context,
      builder: (context) =>
          SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(

                  bottom: MediaQuery.of(context).viewInsets.bottom + 15 ),



              child: Container(
                height: 250,

                child: Padding(padding: EdgeInsets.only(

                    left: 10,
                    right: 10,
                  bottom:  10 ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: task,
                        keyboardType: TextInputType.name,
                        maxLines: 2,

                        decoration:
                        const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(

                                color: Colors.green
                              ),


                            ),
                            labelText: 'Enter the Task'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                               listItems.add(task.text );
                                setState(() {});
                              },
                              child: const Text('Add task',style: TextStyle(
                                color: Colors.green,
                                fontSize: 20


                              ),)),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.close_rounded,
                                color: Colors.red,
                                size: 25,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
}


}