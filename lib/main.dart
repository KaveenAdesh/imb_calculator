import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color background_color = Colors.white;
double male = 120;
double female = 120;
var male_female = '';
int height = 170;
double weight = 50;
Color theme = Colors.black;
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: home_screen(),
    );
  }
}

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,

      appBar: AppBar(

        title: Center(
          child: Text(
            'IMB Calculator',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: theme),
          ),

        ),
        backgroundColor: background_color,
      ),


      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(

                    width: male,
                    height: male,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(onPressed: (){setState(() {
                      male = 140;
                      female = 120;
                      male_female = "Male";
                      background_color =const Color.fromARGB(255, 144, 214, 247);
                      theme = Colors.lightBlue;
                    });}, icon:const  Icon(Icons.male,size: 60,color: Colors.white,))),


                const Spacer(),
                Text('$male_female',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: theme),),
                const Spacer(),

                Container(

                    width: female,
                    height: female,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(onPressed: (){setState(() {
                      male = 120;
                      male_female = "Female";
                      female = 140;
                      theme = Colors.pinkAccent;
                      background_color = const  Color.fromARGB(255, 245, 169, 194);
                    });}, icon:const Icon(Icons.female,size: 60,color: Colors.white,))),
              ],

            ),

          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(

              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Text("${height}cm",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: theme),),
                      const SizedBox(height: 20,),
                      Row(
                        children: [

                          ElevatedButton(onPressed: (){
                            setState(() {
                              creat_imb();
                              height++;
                            });
                          }, child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30),),style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(theme),
                            fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),


                          ),),
                          const Spacer(),

                          ElevatedButton(onPressed: (){
                            setState(() {
                              creat_imb();
                              height--;
                            });
                          }, child: Text("-",style: TextStyle(color: Colors.white,fontSize: 30),),style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(theme),
                            fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),


                          ),),

                        ],

                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Text("${weight}kg",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: theme),),
                      const SizedBox(height: 20,),
                      Row(
                        children: [

                          ElevatedButton(onPressed: (){
                            setState(() {
                              creat_imb();
                              weight = weight +(.5);
                            });
                          }, child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30),),style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(theme),
                            fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),


                          ),),
                          const Spacer(),

                          ElevatedButton(onPressed: (){
                            setState(() {
                              creat_imb();
                              weight = weight -(.5);

                            });
                          }, child: Text("-",style: TextStyle(color: Colors.white,fontSize: 30),),style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(theme),
                            fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),


                          ),),

                        ],

                      ),
                    ],
                  ),
                ),

              ],

            ),
          ),

          const SizedBox(height: 70,),

         Text('BMI :',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: theme),),
        ],

      ),

    );
  }
}

void creat_imb (){




}